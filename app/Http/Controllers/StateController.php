<?php

// app/Http/Controllers/StateController.php
namespace App\Http\Controllers;

use App\Models\State;
use App\Models\District;
use App\Models\Tehsil;
use Illuminate\Http\Request;

class StateController extends Controller
{
    public function newAction()
    {
        $states = State::pluck('sname', 'sid');
        $districts = District::pluck('dname', 'did', 'sid');
        $tehsils = Tehsil::pluck('tname', 'tid', 'did');


        return view('Student.student', compact('states', 'districts', 'tehsils'));
    }
}
