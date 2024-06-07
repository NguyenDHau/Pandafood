<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests\User\RegisterRequest;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Str;
use League\Flysystem\Exception;
use Mail;
use DB;

class RegisterController extends Controller
{
    public function getRegister(){
        return view('frontend.register');
    }

    public function postRegister(RegisterRequest $request){
        try {
            $user = new User();
            $user->user_name = $request->username;
            $user->user_password = bcrypt($request->password);
            $user->user_email = $request->email;
            $user->user_fullname = $request->fullname;
            $user->user_phone = $request->phone;
            $user->user_address = $request->address;
            $user->group_id = 2;
            $user->save();
            return redirect('/dang-nhap')->withInput()->with('success', "Đã đăng ký thành công, kiểm tra email ${request['email']} của bạn");
        } catch (\Exception $e)
        {
         return back()->withInput()->with('error', $e->getMessage());
        }
    }

    public function verification() {
        return view('frontend.auth.activeUser');
    }

    public function active($data){
        try {
            $token = mt_rand(100000,999999);
            $email = DB::table('pdf_users')
                ->where([
                    'user_id' => $data
                ])
                ->value('user_email');
            DB::table('user_active')->insert([
                'email' => $email,
                'token' => $token,
                'created_at' => Carbon::now()
            ]);

            Mail::send('frontend.email.activeUser', ['token' => $token], function($message) use($email){
                $message->to($email);
                $message->subject('Kích hoạt tài khoản!');
            });
            return redirect()->back()->with('success', "Đã gửi email xác thực về ${email}");
        } catch (\Exception $exception)
        {
            return 'false';
        }
    }

    public function changeActive(Request $request) {
        $token = DB::table('user_active')
            ->where([
                'token' => $request->token
            ])
            ->first();
        if (!$token){
            return back()->with('error','Mã xác minh sai hoặc đã hết hạn');
        }

        $user = User::where('user_email', $token->email)
            ->update(['user_active' => 1]);

        DB::table('user_active')->where(['email'=> $token->email])->delete();
        return redirect()->intended('/');
    }

}
