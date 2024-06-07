<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function getLogin(){
        return view('frontend.login');
    }

    public function postLogin(Request $request){
        $credentials = [
            'user_name'=>$request->username,
            'password'=>$request->password
        ];
        if($request->remember =  'Remember Me'){
            $remember = true;
        } else {
            $remember = false;
        }

        if(Auth::attempt($credentials)){

            if (Auth::user()->user_active){
                return redirect()->intended('/');
            }
            return redirect()->intended('/kich-hoat');
        } else {
            return back()->withInput()->with('error', 'Tài khoản hoặc mật khẩu không đúng');
        }
    }
}
