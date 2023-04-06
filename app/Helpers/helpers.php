<?php
namespace App\helpers;
use App\Models\User;

class Helper{


    public static function SendNotification($title,$body){

       $url = 'https://fcm.googleapis.com/fcm/send';
            $FcmToken = User::whereNotNull('device_key')->pluck('device_key')->all();
          
            $serverKey = 'AAAAQzeo7ZA:APA91bG8HRtKvIgfdqS2gUf99ks7Phb5pDyMKuMxkxwuksBaEe0qVB2kM5oVzm7IbKGfvhbEPTrWi0vcDZiV-TeFmzy6BYmZhMylaFL3S74I1NyGZ6JtmZZK965S-WP2d0jq1cFqbMbR';
      
            $data = [
                "registration_ids" => $FcmToken,
                "notification" => [
                    "title" => "$title",
                    "body" => $body,  
                ]
            ];
            $encodedData = json_encode($data);
        
            $headers = [
                'Authorization:key=' . $serverKey,
                'Content-Type: application/json',
            ];
        
            $ch = curl_init();
          
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
            // Disabling SSL Certificate support temporarly
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);        
            curl_setopt($ch, CURLOPT_POSTFIELDS, $encodedData);
            // Execute post
            $result = curl_exec($ch);
            if ($result === FALSE) {
                die('Curl failed: ' . curl_error($ch));
            }        
            // Close connection
            curl_close($ch);

    }
    
   public static function notification_timing($date){
    $seconds  = strtotime(date('Y-m-d H:i:s')) - strtotime($date);

        $months = floor($seconds / (3600*24*30));
        $day = floor($seconds / (3600*24));
        $hours = floor($seconds / 3600);
        $mins = floor(($seconds - ($hours*3600)) / 60);
        $secs = floor($seconds % 60);

        if($seconds < 60)
            $time = $secs." seconds ago";
        else if($seconds < 60*60 )
            $time = $mins." min ago";
        else if($seconds < 24*60*60)
            $time = $hours." hours ago";
        else if($seconds < 24*60*60)
            $time = $day." day ago";
        else
            $time = $months." month ago";

        return $time;
}

public static function encrypt_decrypt($action, $string) {
            $output = false;
            $encrypt_method = "AES-256-CBC";
            $secret_key = '@!kvrahul';
            $secret_iv = '@!kvrahul';
            $key = hash('sha256', $secret_key);
            $iv = substr(hash('sha256', $secret_iv), 0, 16);
            if ( $action == 'encrypt' ) {
                $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
                $output = base64_encode($output);
            } else if( $action == 'decrypt' ) {
                $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
            }
            return $output;
        }
}
