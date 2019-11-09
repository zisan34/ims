<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Product;
class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
    $faker = Faker::create();
    for($i = 0; $i < 20; $i++) {
        Product::create([
            'title' => $faker->word(),
            'price' => rand(1000,1500),
            'stock' => rand(50,100)
        ]);
    }

    }
}
