@extends('frontend.master')
@section('title', 'Kích hoạt tài khoản')
@section('content')













    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="page-title">
                        <h2>Đăng nhập</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-container col1-layout wow bounceInUp animated animated" style="visibility: visible;">
        <div class="main">
            <div class="account-login container">
                @include('success.note')
                @include('errors.note')
                <form action="/kich-hoat" method="post">
                    <input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
                    <fieldset class="col2-set">
                        <div class="col-1 new-users">
                            @if(Auth::user())
                                <span>Thông tin kích hoạt đã được gửi tới email</span>
                                <b>{{Auth::user()->user_email}}</b>
                                <p>
                                    <br>
                                    Nếu bạn chưa nhận được email kích hoạt
                                    <a href="{{ route('active_user', Auth::user()->user_id) }}" class="btn btn-outline-danger">Gửi lại mã xác nhận</a>
                                </p>
                            @endif
                        </div>
                        <div class="col-2 registered-users">
                            <strong>Kích hoạt tài khoản</strong>
                            <div class="content">
                                <ul class="form-list">
                                    <li>
                                        <label for="token">Mã kích hoạt<em class="required">*</em>:</label>
                                        <div class="input-box">
                                            <input type="text" name="token" id="token" class="input-text required-entry validate-email" title="Tên đăng nhập" required>
                                        </div>
                                    </li>
                                </ul>
                                <div class="remember-me-popup">
                                    <div class="remember-me-popup-head" style="display:none">
                                        <h3 id="text2">What's this?</h3>
                                        <a href="#" class="remember-me-popup-close" onClick="showDiv()" title="Close">Close</a>
                                    </div>
                                    <div class="remember-me-popup-body" style="display:none">
                                        <p id="text1">Checking "Remember Me" will let you access your shopping cart on this computer when you are logged out</p>
                                        <div class="remember-me-popup-close-button a-right">
                                            <a href="#" class="remember-me-popup-close button" title="Close" onClick="showDiv()"><span>Close</span></a>
                                        </div>
                                    </div>
                                </div>
                                <p class="required">* Vui lòng không được bỏ trống!</p>
                                <div class="buttons-set">
                                    <button type="submit" class="button login" title="Đăng nhập" name="login"><span>Gửi</span></button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    {{csrf_field()}}
                </form>
            </div>
        </div>
    </div>
    </div>






@endsection