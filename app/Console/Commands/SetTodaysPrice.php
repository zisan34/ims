<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Product;

class SetTodaysPrice extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'set:todaysPrice';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Set Todays Predefined Price Of All Product';

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
    public function handle()
    {
        $products = Product::all();
        foreach($products as $product)
        {
            $product->price = $product->priceToday->price;
            // $product->price += 10;            
            $product->save();
        }
    }
}
