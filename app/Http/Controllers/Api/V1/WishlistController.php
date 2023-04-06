<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Product;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use Auth;
use Session;
use Response;

class WishlistController extends Controller
{

    public function add_to_wishlist(Request $request)
    {
       $user=Auth::user();

       $products=Product::where('id',$request->product_id)->first(); 
       $duplicate_check=Wishlist::where('product_id',$request->product_id)->where('customer_id',$user->id)->first();
       if(!empty($user)){
           if(!empty($products)){
                if(empty($duplicate_check)){
                        $carts =new Wishlist;
                        $carts->product_id=$request->product_id;
                        $carts->customer_id=$user->id;
                        $carts->status="active";
                        $carts->save();
                        $msg="Wishlist added successfully";
                }else{
                        Wishlist::where('product_id',$request->product_id)->where('customer_id',$user->id)->delete();
                        $msg="Wishlist deleted successfully";
                    }
                    $success['statuscode'] =200;
                    $success['message']=$msg;

                    /**
                        * params value (product_id,product_qty)
                    **/
                    $params['product_id']=$request->product_id;
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
    
    public function delete_wishlist(Request $request){
        $user=Auth::user();
        $check_product=Wishlist::where('product_id',$request->product_id)->where('customer_id',$user->id)->first();
        if(!empty($user)){
            if(!empty($check_product)){
                $cart=Wishlist::where('product_id',$request->product_id)->where('customer_id',$user->id)->delete();
        
                $success['statuscode'] =200;
                $success['message']="Wishlist deleted successfully";
        
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
     
     public function wishlist_lists(){
        $user=Auth::user();
        if(!empty($user)){
            $carts=Wishlist::where('status','active')->where('customer_id',$user->id)->get();
                
            $params=[];
            $success['statuscode'] =200;
            $success['params']=$params;
            $success['message']="Wishlist List";
            $success['products']=$carts;  
            $response['response']=$success;
            return \Response::json($response, 200); 
        }
     }

}
