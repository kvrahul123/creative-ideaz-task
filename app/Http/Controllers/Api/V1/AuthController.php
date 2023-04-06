<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use App\Models\User_address;
use Auth;
use Helper;
use App\Models\Notifications;
use App\Models\Owner_meta_data;
use Symfony\Component\HttpFoundation\Response;
use Str;
class AuthController extends Controller
{
    //
    /**
     * @OA\Post(
     ** path="/v1/user-login",
     *   tags={"Login"},
     *   summary="Login",
     *   operationId="login",
     *
     *   @OA\Parameter(
     *      name="email",
     *      in="query",
     *      required=true,
     *      @OA\Schema(
     *           type="string"
     *      )
     *   ),
     *   @OA\Parameter(
     *      name="password",
     *      in="query",
     *      required=true,
     *      @OA\Schema(
     *          type="string"
     *      )
     *   ),
     *   @OA\Response(
     *      response=200,
     *       description="Success",
     *      @OA\MediaType(
     *           mediaType="application/json",
     *      )
     *   ),
     *   @OA\Response(
     *      response=401,
     *       description="Unauthenticated"
     *   ),
     *   @OA\Response(
     *      response=400,
     *      description="Bad Request"
     *   ),
     *   @OA\Response(
     *      response=404,
     *      description="not found"
     *   ),
     *      @OA\Response(
     *          response=403,
     *          description="Forbidden"
     *      )
     *)
     **/
    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {

        $validator = $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        if (!auth()->attempt($validator)) {
            $success['statuscode'] =401;
            $success['message']="Invalid credentials";
            $params=[];
            $success['params']=$params;
            $response['response']=$success;
            return \Response::json($response, 401);
        } else {
            
            $success['statuscode'] =200;
            $success['message']="Logged in successfully";
            $success['token'] = auth()->user()->createToken('authToken')->accessToken;
        /**
         * params value (user_id,otp,token)
        **/
  
            $params['email']=$request->email;
            $params['password']=$request->password;
    

            $success['params']=$params;
            $response['response']=$success;
            return \Response::json($response, 200);
        }
    }


    public function upload(CSVRepository $CSVRepository)
    {
        try{
            $file = Input::file('file');
            $extension = strtolower($file->getClientOriginalExtension());
            if ($extension !== 'csv'){
                $errors['file'] = 'This is not a .csv file!';
                return redirect()->back()->withInput()->withErrors($errors);
            }
            $CSVRepository->uploadCSV($file, $extension); 
            $message = array(
                'type' => 'success',
                'text' => 'Your file has been uploaded! You will receive an email when processing is complete!',
                'title' => 'Success',
            );
            session()->flash('message', $message);
            return redirect('route-to-redirect');
        }catch (\Exception $exception){
            return abort(Response::HTTP_INTERNAL_SERVER_ERROR, 'Internal Server Error');
        }
    }

}
