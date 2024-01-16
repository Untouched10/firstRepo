<?php

namespace App\Http\Controllers;


use App\Models\State;
use App\Models\District;
use App\Models\Tehsil;

use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    public function store(Request $request)
    {
        // Validate the form data
        $validatedData = $request->validate([
            // 'sid' => 'required',
            'name' => 'required',
            'state' => 'required',
            'district' => 'required',
            'tehsil' => 'required',
            'email' => 'required',
            'pno' => 'required',
            'DOB' => 'required',
            'TOB' => 'required'
        ]);

        // Create a new student record in the database
        Student::create($validatedData);

        // Redirect back with a success message
        return redirect('/')->with('success', 'Student details added successfully!');
        // Delete a record with id = 1

        // Fetch state dropdown options
        // $data = State::all();

        // // Redirect back with a success message
        // return view('State', ['data' => $data]);


    }
    // public function newState()
    // {
    //     $states = State::distinct('sname')->pluck('sname');
    //     $districts = District::all();

    //     return view('student', compact('states', 'districts'));
    // }
}
