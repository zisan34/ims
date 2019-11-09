<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return  Product::orderBy('updated_at', 'desc')->get();

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $product = new Product;
        $product->title = $request->name;
        $product->price = $request->price;
        $product->stock = $request->quantity;

        $product->save();
        
        return  (['message'=>'Successfully added new Product']);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $product = Product::find($id);
        $product->name = $request->name;
        $product->price = $request->price;
        $product->quantity = $request->quantity;
        $product->save();
        return  (['message'=>'Successfully added new Product']);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $product = Product::find($id);
        $id = $product->id;
        $name = $product->name;
        $price = $product->price;
        $quantity = $product->quantity;
        $vals = array('id' => $id,
                    'name' => $name,
                    'price'=> $price,
                    'quantity'=>$quantity
                );

        $product->delete();
        return  json_encode($vals);
    }
    public function priceToday($id)
    {
        $product = Product::find($id);
        return $product->priceToday;
    }
    public function nextPrices($id)
    {
        $product = Product::find($id);
        echo "<pre>";
        print_r($product->nextPrices);
        return;
    }
    public function priceTimeline($id)
    {
        $product = Product::find($id);

        $dates = array();
        $prices = array();
        $name = $product->name;
        foreach ($product->prevPrices()->orderBy('start_date','asc')->get() as $key => $price) {

            array_push($dates, [date('Y-m-d',strtotime($price->start_date))]);
            array_push($prices, $price->price);
        }
        array_push($dates, [date('Y-m-d',strtotime($product->priceToday->start_date))]);
        array_push($prices, $product->priceToday->price);
        foreach ($product->nextPrices()->orderBy('start_date','asc')->get() as $key => $price) {

            array_push($dates, [date('Y-m-d',strtotime($price->start_date))]);
            array_push($prices, $price->price);
        }

        // var_dump($dates);
        // return;

        return view('timeline')->with('dates',json_encode($dates))->with('prices',json_encode($prices))->with('name',json_encode($name));
    }
}
