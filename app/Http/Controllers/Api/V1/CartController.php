<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Product;
use App\Models\Carts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use Auth;
use Session;
use Response;

class CartController extends Controller
{

    public function add_to_cart(Request $request)
    {
       $user=Auth::user();

       $products=Product::where('id',$request->product_id)->first(); 
       $duplicate_check=Carts::where('product_id',$request->product_id)->where('customer_id',$user->id)->first();
       if(!empty($user)){
        if(!empty($products)){
           if(empty($duplicate_check)){
                $carts =new Carts;
                $carts->product_id=$request->product_id;
                $carts->product_qty=$request->product_qty;
                $carts->customer_id=$user->id;
                $carts->status="active";
                $carts->save();
                $msg="Cart added successfully";
           }else{
                Carts::where('product_id',$request->product_id)->where('customer_id',$user->id)->update(['product_qty'=>$request->product_qty]);
                $msg="Cart updated successfully";
            }
            $success['statuscode'] =200;
            $success['message']=$msg;

            /**
                * params value (product_id,product_qty)
            **/
            $params['product_id']=$request->product_id;
            $params['product_qty']=$request->product_qty;
            $success['params']=$params;
            $response['response']=$success;
            return \Response::json($response, 200);
        }
        else{
            $success['statuscode'] =200;
            $success['message']="Invalid product";
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
    
    public function delete_cart(Request $request){
        $user=Auth::user();
        $check_product=Carts::where('product_id',$request->product_id)->where('customer_id',$user->id)->first();
        if(!empty($user)){
            if(!empty($check_product)){
                $cart=Carts::where('product_id',$request->product_id)->where('customer_id',$user->id)->delete();
        
                $success['statuscode'] =200;
                $success['message']="Cart deleted successfully";
        
                /**
                 * params value (product_id,product_qty)
                **/
                $params['product_id']=$request->product_id;   
                $success['params']=$params;
                $response['response']=$success;
                return \Response::json($response, 200);
            }else{
                $success['statuscode'] =401;
                $success['message']="Invalid products";
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
     
     public function cart_lists(){
        $user=Auth::user();
        $carts=Carts::where('status','active')->where('customer_id',$user->id)->get();
        $subamt=0;
        $depositamt=0;
        $delivery_charge=0;
        $totalamt=0;
        foreach($carts as $key=>$cart){
            $product=Product::where('id',$cart->product_id)->first();
            $carts[$key]['product_image']="https://niresh.oceansoftwares.in/lavenjal/public/".$product->image;
            $carts[$key]['per_jar_rate']=$product->deposit_amount;
            //$subamt+=($cart->price * $cart->product_qty)+($cart->product_qty * $product->deposit_amount);
            $subamt+=($cart->price * $cart->product_qty);
            $depositamt+=($cart->deposit_amount);
            if($cart->deposit_amount!="0"){
            $totalamt+=($cart->price * $cart->product_qty)+($cart->product_qty * $product->deposit_amount) - ($cart->deposit_amount);
            }else{
              $totalamt+=($cart->price * $cart->product_qty)+($cart->product_qty * $product->deposit_amount) + ($cart->deposit_amount);  
            }
        }
    
        
        foreach($carts as $key=>$cart){
            $carts[$key]['subamt']=$subamt;
            $carts[$key]['depositamt']=$depositamt;
            $carts[$key]['delivery_charge']=$delivery_charge;
            $carts[$key]['totalamt']=$subamt+$depositamt;
         }
         
        
        $params=[];
        $success['statuscode'] =200;
        $success['params']=$params;
        $success['message']="Cart List";
        $success['products']=$carts;  
        $response['response']=$success;
        return \Response::json($response, 200); 
     }

}
