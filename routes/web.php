<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
 // Importez le contrôleur


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//Route::get('/w', [appsController::class, 'index'])->name('welcome'); // Utilisez le contrôleur directement dans la route
Route::get('/', [ProductController::class, 'index']);
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
