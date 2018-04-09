<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('test',function(){
    echo 'helloo ';
});
Route::get('/', function () {
    return view('welcome');
});
Route::get('/dynamic_dropdown','DynamicDropdownController@index');
Route::post('dynamic_dropdown/fetch','DynamicDropdownController@fetch')->name('dynamicdropdown.fetch');
Route::post('dynamic_dropdown/city',['as'=>'fetchcity','uses'=>'DynamicDropdownController@fetchcity']);



