<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Student; // Assuming you have a Student model

class StudentController extends Controller
{
    public function store(Request $request)
    {
        // Validate the form data
        $validatedData = $request->validate([
            // 'sid' => 'required',
            'name' => 'required',
            'addr' => 'required',
            'pno' => 'required',
            'DOB' => 'required',
        ]);

        // Create a new student record in the database
        Student::create($validatedData);

        // Redirect back with a success message
        return redirect('/')->with('success', 'Student details added successfully!');
        // Delete a record with id = 1

    }
}
