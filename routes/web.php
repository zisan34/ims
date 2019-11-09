<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('products','ProductsController');
Route::get('product/price-today/{id}','ProductsController@priceToday');
Route::get('product/next-prices/{id}','ProductsController@nextPrices');

Route::get('product/price-timeline/{id}','ProductsController@priceTimeline')->name('product.price_timeline');
Route::get('/test', function(){
	// $priceTimeline = App\Product::find(2)->priceTimeline;
	// foreach ($priceTimeline as $date_price)
	// {
	// 	echo $date_price->start_date->diffForHumans();
	// 	echo " ";
	// 	echo $date_price->end_date->diffForHumans();
	// 	echo " ";
	// 	echo "<br>";
	// }

	return view('test');

});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
