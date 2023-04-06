<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\ApiController;
use App\Http\Controllers\Api\V1\CartController;
use App\Http\Controllers\Api\V1\WishlistController;
use App\Http\Controllers\Api\V1\OrderController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([
    'prefix' => 'v1',
    'as' => 'api',
    'middleware' => ['auth:api']
], function () {

    //Cart
    Route::post('add_to_cart', [CartController::class, 'add_to_cart']);
    Route::post('delete_cart', [CartController::class, 'delete_cart']);

    //wishlists
    Route::post('add_to_wishlist', [WishlistController::class, 'add_to_wishlist']);
    Route::post('delete_wishlist', [WishlistController::class, 'delete_wishlist']);
    Route::get('wishlist_lists', [WishlistController::class, 'wishlist_lists']);

    //orders
    Route::post('add_order', [OrderController::class, 'add_order']);
    Route::post('delete_orders', [OrderController::class, 'delete_orders']);
    Route::get('orders_list', [OrderController::class, 'orders_list']);
});

//auth routes

Route::post('/user-login', [AuthController::class, 'login']);

