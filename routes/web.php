<?php

use App\Models\District;
use Illuminate\Support\Facades\Route;


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

// Route::get('/', function () {
//     return view('welcome');
// });

use App\Http\Controllers\StateController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\DistrictController;
use App\Http\Controllers\DropdownController;

Route::get('/', function () {
    return view('Student.student');
});

// Route::get('/states ', [StateController::class, 'newState'])->name('newState');
// Route::post('/districts ', [StateController::class, 'newDistrict'])->name('newDistrict');
// Route::post('/tehsils', [StateController::class, 'newTehsil'])->name('newTehsil');

Route::get('/', [DropdownController::class, 'index']);
Route::post('/get-districts', [DropdownController::class, 'getDistricts']);
Route::post('/get-tehsils', [DropdownController::class, 'getTehsils']);

// Route::get('/', function () {
//     return view('Student.state');
// });

Route::post('/store', [StudentController::class, 'store'])->name('store.Student');
// Route::get('/', [StudentController::class, 'yourMethod']);


// routes/web.php
// routes/web.php
// use App\Http\Controllers\StateController;

// Route::get('/new-state', [StateController::class, 'newState'])->name('new.state');
