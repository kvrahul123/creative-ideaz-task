<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Product;
use App\Models\Order;
use App\Models\Carts;
use App\Models\Orderproducts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use Auth;
use DB;
use Session;
use Response;

class OrderController extends Controller
{

    public function add_order(Request $request)
    {
       $user=Auth::user();
        $validated=$request->validate([
            'first_name'=>'required',
            'last_name'=>'required',
            'address'=>'required',
        ]);
       $carts=Carts::where('customer_id',$user->id)->get();
       $totalAmt=Carts::where('customer_id',auth()->user()->id)->join('products','carts.product_id','products.id')->select(DB::raw('SUM(products.price * carts.product_qty) AS total'))->first(); 
       if(!empty($user)){
           if(count($carts) > 0){
                $orders=new Order; 
                $orders->first_name=$request->first_name; 
                $orders->last_name=$request->last_name; 
                $orders->customer_id=$user->id;                      
                $orders->address=$request->address;                      
                $orders->total_amount=$totalAmt->total; 
                $orders->save();                     
                foreach($carts as $cart){
                    $order_products=new Orderproducts;
                    $order_products->product_id=$cart->product_id;
                    $order_products->order_id=$orders->id;
                    $order_products->product_qty=$cart->product_qty;
                    $order_products->order_details=\json_encode($cart);
                    $order_products->save();      
                }
                Carts::where('customer_id',$user->id)->delete();
                $success['statuscode'] =200;
                $success['message']="Order saved successfully";
        
                /**
                 * params value (product_id,product_qty)
                **/
                $params=[];   
                $success['params']=$params;
                $response['orders']=$orders;
                $response['response']=$success;
                return \Response::json($response, 200);
           }
            else{
                $success['statuscode'] =200;
                $success['message']="No items in cart";
                $params=[];
                $success['params']=$params;
                $response['response']=$success;
                return \Response::json($response, 200);
            }
       }else{
            $success['statuscode'] =401;
            $success['message']="Please login";
            $params=[];
            $success['params']=$params;
            $response['response']=$success;
            return \Response::json($response, 401);
       }
    }
    
    public function delete_orders(Request $request){

        $user=Auth::user();
        $check_order=Order::where('id',$request->order_id)->where('customer_id',$user->id)->first();
        if(!empty($user)){
            if(!empty($check_order)){
                $order=Order::where('id',$request->order_id)->where('customer_id',$user->id)->delete();
                $order_products=Orderproducts::where('order_id',$request->order_id)->delete();
                $success['statuscode'] =200;
                $success['message']="Order deleted successfully";
        
                /**
                 * params value (product_id,product_qty)
                **/
                $params['order_id']=$request->order_id;   
                $success['params']=$params;
                $response['response']=$success;
                return \Response::json($response, 200);
            }else{
                $success['statuscode'] =401;
                $success['message']="Invalid order";
                $params=[];
                $success['params']=$params;
                $response['response']=$success;
                return \Response::json($response, 401);
            }
        }else{
                $success['statuscode'] =401;
                $success['message']="Please login";
                $params=[];
                $success['params']=$params;
                $response['response']=$success;
                return \Response::json($response, 401);
        }
     }
     
     public function orders_list(){
        $user=Auth::user();
        if(!empty($user)){
            $carts=Order::where('customer_id',$user->id)->get();
                
            $params=[];
            $success['statuscode'] =200;
            $success['params']=$params;
            $success['message']="Orders List";
            $success['products']=$carts;  
            $response['response']=$success;
            return \Response::json($response, 200); 
        }
     }

}
