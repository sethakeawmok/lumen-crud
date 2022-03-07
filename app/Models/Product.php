<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    
    protected $fillable = [
        'product_name','product_detail','product_barcode','product_qty','product_price','product_date','product_image','product_category','product_status'
    ];

}
