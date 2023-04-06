<?php
namespace App\Jobs;

use App\Mail\OtpMail;

use Illuminate\Bus\Queueable;

use Illuminate\Contracts\Queue\ShouldBeUnique;

use Illuminate\Contracts\Queue\ShouldQueue;

use Illuminate\Foundation\Bus\Dispatchable;

use Illuminate\Queue\InteractsWithQueue;

use Illuminate\Queue\SerializesModels;

use Mail;
class OtpEmailJob implements ShouldQueue

{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $details;

    /**

     * Create a new job instance.

     *

     * @return void

     */

    public function __construct($details)

    {
        $this->details = $details;

    }



    /**

     * Execute the job.

     *

     * @return void

     */

    public function handle()

    {

        $email = new OtpMail($this->details);
        $response=  Mail::to($this->details['email'])->send($email);
    }

}

