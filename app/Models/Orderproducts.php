<?php



namespace App\Models;



use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;



class Orderproducts extends Model

{

    use HasFactory;
    protected $table="order_products";
    protected $fillable=['order_id','product_id','product_qty','product_details'];


}

