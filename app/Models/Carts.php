<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Carts extends Model
{
    use HasFactory;
    protected $table="carts";
    protected $fillable = ['customer_id','product_id','product_qty','status','created_at','updated_at'];
}
