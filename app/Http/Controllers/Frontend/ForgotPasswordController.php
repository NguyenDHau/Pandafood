<?php



namespace App\Http\Controllers\Frontend;



use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use DB;

use Carbon\Carbon;

use App\Models\User;

use App\Http\Requests\Auth\ResetPasswordRequest;

use Mail;

use Hash;

use Illuminate\Support\Str;



class ForgotPasswordController extends Controller

{

    /**

     * Write code on Method

     *

     * @return response()

     */

    public function showForgetPasswordForm()
    {
        return view('frontend.auth.forgetPassword', ['title' => 'Đặt lại mật khẩu']);
    }



    /**

     * Write code on Method

     *

     * @return response()

     */

    public function submitForgetPasswordForm(Request $request)
    {
        $token = Str::random(64);
        $email = DB::table('pdf_users')
            ->where([
                'user_name' => $request->username
            ])
            ->value('user_email');
        if (!$email){
            return back()->with('error', 'Không tìm thấy người dùng');
        }


        $emailParts = explode('@', $email);
        $start2 = substr($emailParts[0], 0, 3);
        $end2 = substr($emailParts[0], -2);
        $mailReplace = $start2 . '***' . $end2 . $emailParts[1];

        DB::table('password_resets')->insert([
            'email' => $email,
            'token' => $token,
            'created_at' => Carbon::now()
        ]);

        Mail::send('frontend.email.forgetPassword', ['token' => $token], function($message) use($email){
            $message->to($email);
            $message->subject('Đặt lại mật khẩu!');
        });

        return back()->with('message', "Thông tin đặt lại mật khẩu đã được gửi tới email $mailReplace!");

    }

    /**

     * Write code on Method

     *

     * @return response()

     */

    public function showResetPasswordForm($token) {
        return view('frontend.auth.forgetPasswordLink', ['token' => $token, 'title' => 'Đặt lại mật khẩu']);
    }



    /**

     * Write code on Method

     *

     * @return response()

     */

    public function submitResetPasswordForm(ResetPasswordRequest $request)
    {
        $updatePassword = DB::table('password_resets')
            ->where([
                'token' => $request->token
            ])
            ->first();

        if(!$updatePassword){
            return redirect('/dang-nhap')->with('error','Mã đổi mật khẩu đã hết hạn');
        }

        $user = User::where('user_email', $updatePassword->email)
            ->update(['user_password' => Hash::make($request->password)]);

        DB::table('password_resets')->where(['email'=> $updatePassword->email])->delete();

        return redirect('/dang-nhap')->with('success', 'Cập nhật mật khẩu thành công!');

    }

}
