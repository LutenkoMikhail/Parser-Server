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

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/', 'WelcomeController@index')->name('welcome');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/home/servers', 'ServerController@index')->name('server.index');
Route::get('/home/servers/{server}', 'ServerController@show')->name('server.show');
Route::get('/home/servers/delete/{server}', 'ServerController@destroy')->name('server.destroy');
Route::get('/home/server/create', 'ServerController@create')->name('server.create');
Route::post('/home/server/store', 'ServerController@store')->name('server.store');
Route::get('/home/servers/edit/{server}', 'ServerController@edit')->name('server.edit');
Route::post('/home/server/{server}', 'ServerController@update')->name('server.update');

Route::get('/home/sources', 'SourceController@index')->name('source.index');
Route::get('/home/sources/{source}', 'SourceController@show')->name('source.show');
Route::get('/home/sources/parser/{source}', 'SourceController@parsing')->name('source.parsing');
Route::get('/home/sources/delete/{source}', 'SourceController@destroy')->name('source.destroy');
Route::get('/home/source/create', 'SourceController@create')->name('source.create');
Route::post('/home/source/store', 'SourceController@store')->name('source.store');
Route::get('/home/sources/edit/{source}', 'SourceController@edit')->name('source.edit');
Route::post('/home/source/{source}', 'SourceController@update')->name('source.update');


//Route::get('profile', function () {
//    // Only authenticated users may enter...
//})->middleware('auth');


//Route::get('author/create',  'AuthorController@create')->name('author.create');
//Route::post('author/store', 'AuthorController@store')->name('author.store');
//
//
//Route::get('author/{author}/edit', 'AuthorController@edit')->name('author.edit');
//Route::post('author/{author}', 'AuthorController@update')->name('author.update');
