<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Invoice;
use App\Models\User;
use Illuminate\Support\Facades\Storage;
use Hash;
use Illuminate\Support\Facades\Log;
class ProcessCSVCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'csv:users';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Process an uploaded CSV file';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    private function csvToArray($filename = '', $delimiter = ',')
{
    if (!file_exists($filename) || !is_readable($filename))
        return false;

    $header = null;
    $data = array();
    if (($handle = fopen($filename, 'r')) !== false)
    {
        while (($row = fgetcsv($handle, 1000, $delimiter)) !== false)
        {
            if (!$header)
                $header = $row;
            else
                $data[] = array_combine($header, $row);
        }
        fclose($handle);
    }

    return $data;
}
    public function handle()
    {
        $file = public_path('customers.csv');

        $customerArr = $this->csvToArray($file);
        $success=0;
        $failure=0;
        for ($i = 0; $i < count($customerArr); $i ++)
        {
            try{
            $user=new User;
            $user->firstName=$customerArr[$i]['firstName'];
            $user->lastName=$customerArr[$i]['lastName'];
            $user->email=$customerArr[$i]['email'];
            $user->phoneNumber=(string)$customerArr[$i]['phoneNumber'];
            $user->password=Hash::make((string)$customerArr[$i]['phoneNumber']);
            $user->save(); 
            $success++;           
            
            }catch(Exception $e){
                $failure++;
            }
        }
        Log::channel('single')->info($success.' users successfully imported');
        Log::channel('single')->error($failure.' users not imported ');
        // return redirect()->back();
    }
}