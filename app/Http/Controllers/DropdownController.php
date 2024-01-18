<?php

namespace App\Http\Controllers;

use App\Models\State;
use App\Models\District;
use Illuminate\Http\Request;

class DropdownController extends Controller
{
    public function index()
    {
        // Fetch all states to populate the first dropdown
        $states = State::all();

        return view('Student.student', compact('states'));
    }

    public function getDistricts(Request $request)
    {
        // Fetch districts based on selected state
        $districts = State::find($request->state_id)->districts;

        return response()->json($districts);
    }

    public function getTehsils(Request $request)
    {
        // Fetch tehsils based on selected district
        $tehsils = District::find($request->district_id)->tehsils;

        return response()->json($tehsils);
    }
}
