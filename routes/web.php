<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api/', 'middleware' => 'jwt.auth'], function ($router) {
    
    $router->get('me', 'UserController@me');

    $router->get('products', 'ProductController@index');
    $router->get('products/{id}', 'ProductController@show');
    $router->post('products', 'ProductController@store');
    $router->post('products/{id}', 'ProductController@update');
    $router->delete('products/{id}', 'ProductController@delete');
});

$router->post('register', 'UserController@register');
$router->post('login', 'UserController@login');
$router->post('logout', 'UserController@logout');





$router->get('/key', function() {
    return \Illuminate\Support\Str::random(32);
});