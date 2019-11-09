<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PriceTimeline extends Model
{
    //
    protected $fillable = ['product_id', 'start_date', 'end_date', 'price'];
    protected $dates = ['start_date', 'end_date'];
}
