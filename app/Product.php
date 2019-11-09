<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    //
    use SoftDeletes;

    protected $table = 'products';
    protected $dates = ['deleted_at'];

    protected $fillable = [ 'title', 'image', 'price', 'stock'];

    public function priceTimeline()
    {
    	return $this->hasMany('App\PriceTimeline');
    }
    public function priceToday()
    {
    	$today = \Carbon\Carbon::today();
    	return $this->hasOne('App\PriceTimeline')->where('start_date', '=', $today);
    }
    public function nextPrices()
    {
    	$today = \Carbon\Carbon::today();
    	return $this->hasMany('App\PriceTimeline')->where('start_date', '>', $today);
    }
    public function prevPrices()
    {
        $today = \Carbon\Carbon::today();
        return $this->hasMany('App\PriceTimeline')->where('start_date', '<', $today);
    }
}
