<?php

// app/Http/Controllers/StateController.php
namespace App\Http\Controllers;

use App\Models\State;
use Illuminate\Http\Request;

class StateController extends Controller
{
    public function newState()
    {
        // $states = State::distinct('sname')->pluck('sname');
        // return view('state', compact('states'));
        $states = State::pluck('sname', 'sid'); // Assuming 'name' is the column you want to display and 'id' is the key
        return view('Student.student', compact('states'));
    }
}
