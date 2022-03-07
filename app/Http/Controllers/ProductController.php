<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(){
        //$item = Product::all();
        $item = Product::paginate(10);
        return $item;
    }

    public function show($id){
        $item = Product::findOrFail($id);
        return $item;
    }

    public function store(Request $request){
        $product = new Product;
        $product->product_name    = $request->product_name;
        $product->product_detail  = $request->product_detail;
        $product->product_barcode = $request->product_barcode;
        $product->product_qty     = $request->product_qty;
        $product->product_price   = $request->product_price;
        $product->product_date   = date('Y-m-d');
        $product->product_image   = $request->product_image;
        $product->product_category   = $request->product_category;
        $product->product_status   = '1';
        $product->save();
     
        return ([ 'status' => true, 'msg'=>'Data Inserted Success']);

    }

    public function update(Request $request, $id){
        
        $product = Product::find($id);
        $product->product_name    = $request->product_name;
        $product->product_detail  = $request->product_detail;
        $product->product_barcode = $request->product_barcode;
        $product->product_qty     = $request->product_qty;
        $product->product_price   = $request->product_price;
        $product->product_date   = date('Y-m-d');
        $product->product_image   = $request->product_image;
        $product->product_category   = $request->product_category;
       
        if (!empty($id)) {
            $product->save();
            return ([ 'status' => true, 'msg'=>'Data Updated Success']);
       } else {
            return ([ 'status' => true, 'msg'=>'Data Updated Success']);
       }
       
    }

    public function delete($id){
        $Product = new Product();
        if (!empty($id)) {
            $product = Product::destroy($id); 
            return ([ 'status' => true, 'msg'=>'Data Delete Success']);
        } else {
            return ([ 'status' => true, 'msg'=>'Data Delete Failed']);
        }
    }

    //
}
