<aside class="col-right sidebar col-sm-3 col-xs-12 wow bounceInUp animated animated" style="visibility: visible;">
    <div class="block block-account">
        <div class="block-title"> Tài khoản </div>
        <div class="block-content">
            <ul>
                <li class="current"><a href="{{asset('tai-khoan/thong-tin')}}">{{Auth::user()->user_name}}</a></li>
{{--                <li><a href="#"><span> Đổi mật khẩu</span></a></li>--}}
{{--                <li><a href="#"><span> Địa chỉ giao hàng</span></a></li>--}}
                <li><a href="{{asset('tai-khoan/don-hang')}}"><span> Theo dõi đơn hàng</span></a></li>
                <li><a href="{{asset('gio-hang')}}"><span> Giỏ hàng</span></a></li>
                @if(Auth::user()->user_shop_name)
                    <li><a href="/shop"><span>Quản lý shop</span></a></li>
                @else
                    <li><a href="/shop/dang-ky"><span>Đăng ký bán hàng</span></a></li>
                @endif
                <li><a href="{{asset('dang-xuat')}}"><span> Đăng xuất</span></a></li>
            </ul>
        </div>
        <!--block-content-->
    </div>
    <!--block block-account-->
</aside>