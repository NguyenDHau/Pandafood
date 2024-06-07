<?php

namespace App\Http\Controllers\Shop;

use App\Http\Requests\Order\EditOrderRequest;
use App\Http\Requests\Product\AddProductRequest;
use App\Http\Requests\Product\EditProductRequest;
use App\Models\Category;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\Shipper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\DB;
use Auth;


class ShopController extends Controller
{
    public function showRegister() {
        return view('shop.register');
    }
    public function register(Request $request) {
        $user = User::find($request->userId);
        $user->user_shop_name = $request->shopName;
        $user->save();
        return redirect()->intended('/tai-khoan/thong-tin')->with('success', 'Đăng ký shop thành công');
    }


    public function getShop() {
        return view('shop.index');
    }

    public function getProduct(){
        $data['productlist'] = DB::table('pdf_products')
            ->join('pdf_categories','pdf_products.category_id','=','pdf_categories.category_id')
            ->select('pdf_products.*','pdf_categories.category_id','pdf_categories.category_title')
            ->where('pdf_products.user_id', '=', Auth::user()->user_id)
            ->orderBy('product_id','desc')
            ->get();
        return view('shop.product.product',$data);
    }


    public function getAddProduct(){
        $data['catelist'] = Category::All();
        return view('shop.product.addproduct',$data);
    }

    public function postAddProduct(AddProductRequest $request){
        $imgname = $request->img->getClientOriginalName();

        $product = new Product;
        $product->user_id = Auth::user()->user_id;
        $product->product_name = $request->name;
        $product->product_slug = str_slug($request->name);
        $product->product_unit = $request->unit;
        $product->product_price = $request->price;
        $product->product_promotion = $request->promotion;
        $product->product_condition = $request->condition;
        $product->product_featured = $request->featured;
        $product->product_img = $imgname;
        $product->product_description = $request->description;
        $product->product_content = $request->prodcontent;
        $product->category_id = $request->category;
        $product->save();
        $request->img->move('uploads/products',$imgname);
        return back()->withInput()->with('success', 'Đã thêm mới sản phẩm');
    }

    public function getEditProduct($product_id){
        $data['product'] = Product::Find($product_id);
        $data['catelist'] = Category::All();
        return view('shop.product.editproduct',$data);
    }

    public function postEditProduct(EditProductRequest $request, $product_id){
        $product = new Product();
        $arr['product_name'] = $request->name;
        $arr['product_slug'] = str_slug($request->name);
        $arr['product_unit'] = $request->unit;
        $arr['product_price'] = $request->price;
        $arr['product_promotion'] = $request->promotion;
        $arr['product_condition'] = $request->condition;
        $arr['product_featured'] = $request->featured;
        $arr['product_description'] = $request->description;
        $arr['product_content'] = $request->prodcontent;
        $arr['category_id'] = $request->category;
        if($request->hasFile('img')){
            $imgname = $request->img->getClientOriginalName();
            $arr['product_img'] = $imgname;
            $request->img->move('uploads/products',$imgname);
        }
        $product::where('product_id',$product_id)->update($arr);
        return back()->withInput()->with('success', 'Đã cập nhật sản phẩm');
    }

    public function getDelProduct($product_id){
        Product::destroy($product_id);
        return back()->withInput()->with('success', 'Đã xóa sản phẩm');
    }




    public function getOrder(){
        $data['orderslist'] = DB::table('pdf_orders')
            ->join('pdf_users','pdf_orders.user_id','=','pdf_users.user_id')
            ->join('pdf_shippers','pdf_orders.shipper_id','=','pdf_shippers.shipper_id')
            ->select('pdf_orders.*','pdf_users.user_id','pdf_users.user_name','pdf_shippers.*', 'pdf_orders.shop_id')
            ->where('pdf_orders.shop_id', '=', Auth::user()->user_id)
            ->get();
//        dd($data);
        return view('shop.order.order', $data);
    }

    public function getEditOrder($order_id){


//        $data['order'] = DB::table('pdf_orders')
//            ->join('pdf_orderdetails', 'pdf_orders.order_id', '=', 'pdf_orderdetails.order_id')
//            ->join('pdf_products', 'pdf_orderdetails.product_id', '=', 'pdf_products.product_id')
//            ->select('pdf_orders.*', 'pdf_products.product_name','pdf_products.product_id')
//            ->where('pdf_orders.order_id', '=', 45)
//            ->get();

        $data['order'] = Order::find($order_id);


        $data['shippers'] = Shipper::all();
        $data['details'] = DB::table('pdf_orderdetails')
            ->join('pdf_products', 'pdf_orderdetails.product_id', '=', 'pdf_products.product_id')
            ->select('pdf_orderdetails.*', 'pdf_products.product_name')
            ->where('pdf_orderdetails.order_id', $data['order']->order_id)
            ->get();
//        dd($data['details']);
        return view('shop.order.editorder', $data);
    }

    public function postEditOrder(EditOrderRequest $request){
        $order = new Order();
        $arr['order_phone'] = $request->phone;
        $arr['order_name'] = $request->name;
        $arr['order_address'] = $request->address;
        $arr['order_note'] = $request->note;
        $arr['order_status'] = $request->status;
        $arr['shipper_id'] = $request->shipper;
        $arr['order_billoflanding'] = $request->billoflanding;
        $order::where('order_id', $request->id)->update($arr);
        return back()->withInput()->with('success', 'Đã cập nhật đơn hàng');
    }

    public function getDelOrder($order_id){
        Order::destroy($order_id);
        return back()->withInput()->with('success', 'Đã xóa đơn hàng');
    }

}
