<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
class Order extends Model
{
    use HasFactory;
    protected $table = 'orders';
    protected $fillable=['first_name','last_name','customer_id','address','total_amount','status'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

