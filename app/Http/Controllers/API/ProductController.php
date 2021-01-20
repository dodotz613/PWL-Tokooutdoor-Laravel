<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductVerifyRequest;
use App\Http\Requests\ProductEditVerifyRequest;
use App\Http\Resources\ApiResource;
use Illuminate\Support\Facades\Validator;

use Illuminate\Support\Facades\DB;
use App\Product;
use App\Category;


class ProductController extends Controller
{
   public function index()
    {
         $products = Product::all();
        return response([ 'products' => ApiResource::collection($products),
         'message' => 'Retrieved successfully'], 200);
        
    }   
    
    public function store(Request $request)
    { 
        $data = $request->all();

        $validator = Validator::make($data, [
            'name' => 'required',
            'image_name' => 'required',
            'description' => 'required',
            'colors' => 'required',
            'price' => 'required',
            'discount' => 'required',
            'tag' => 'required',
            'category_id' => 'required'

        ]);

        if ($validator->fails()) {
            return response(['error' => $validator->errors(), 'Validation Error']);
        }

        $product = Product::create($data);

        return response(['products' => new ApiResource($product),
         'message' => 'Created successfully'], 201);
    }
    
    public function show(Product $product)
    {
        return response(['product' => new ApiResource($product),
         'message' => 'Retrieved successfully'], 200);
    }

    public function update(Request $request, Product $product)
    {
        $product->update($request->all());

        return response(['product' => new ApiResource($product),
         'message' => 'Update successfully'], 200);
    }

    public function destroy(Product $product)
    {
        $product->delete();

        return response(['message' => 'Deleted']);
    }
}