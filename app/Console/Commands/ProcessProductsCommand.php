<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Product;
use Illuminate\Support\Facades\Log;
class ProcessProductsCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'csv:products';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     *
     * @return int
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
            $file = public_path('products.csv');
    
            $customerArr = $this->csvToArray($file);
            $success=0;
            $failure=0;
            for ($i = 0; $i < count($customerArr); $i ++)
            {
            try{
                $product=new Product;
                $product->name=$customerArr[$i]['productname'];
                $product->price=$customerArr[$i]['price'];
                $product->save();
                $success++;
            }catch(Exception $e){
                $failure++;
            }
           // User::firstOrCreate($customerArr[$i]);
            }
            Log::channel('single')->info($success.' products successfully imported');
            Log::channel('single')->error($failure.' products not imported ');
            // return redirect()->back();
        }
}
