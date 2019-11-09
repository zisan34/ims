<?php

use Illuminate\Database\Seeder;
use App\PriceTimeline;
use App\Product;
class PriceTimelineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $products = Product::all();

        foreach ($products as $product)
        {
        	for ($i=0; $i < 7; $i++)
        	{
        		$current = \Carbon\Carbon::today();
        		$start = $current->copy()->addDays($i);
        		$end = $current->copy()->addDays($i+1);
        		PriceTimeline::create([
        			'product_id' => $product->id,
        			'price' => rand(100,150),
        			'start_date' => $start,
        			'end_date' => $end
        		]);
        	}
        }

    }
}