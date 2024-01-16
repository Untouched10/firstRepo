<!DOCTYPE html>!
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .genderContainer {
            margin-bottom: 50px; /* Adjust the value as needed for the desired spacing */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2>Student Details Form</h2>
    
    <form method="post" action="{{ route('newState') . '/' . route('store.Student') }}" id="studentForm">
        @csrf
        @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

        {{-- <div class="form-group">
            <label for="sid">Student ID:</label>
            <input type="text" class="form-control" id="sid" name="sid" placeholder="Enter Student ID" required>
        </div> --}}

        <div class="form-group">
            <label for="name">Student Name:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Student Name" required>
        </div>

        <div class="form-group">
            
            <label for="state">State:</label>
            <select class="form-control" id="state" name="state" required>
                <option selected="selected">Select State</option>
                @foreach($states as $id => $state)
                    <option value="{{ $id }}">{{ $state }}</option>
                @endforeach
            </select>
        </div>
        
        {{-- <div class="form-group">
            <label for="district">District:</label>
            <select class="form-control" id="district" name="district" required>
                <option selected="selected">Select District</option>
                @foreach($districts as $district)
                    <option value="{{ $district->id }}">{{ $district->district_name }}</option>
                @endforeach
            </select>
        </div> --}}

{{-- 
        <div class="form-group">
            <label for="state">State:</label>
            <select class="form-control" id="state" name="state" required>
                {{-- @foreach($data as $d)
                    <option value="{{$d}}">{{$d}}</option>
                @endforeach --}}
                {{-- <option selected="selected">Enter State</option>
                <option value="option1">option1</option>
                <option value="option2">option2</option>
                <option value="option3">option3</option>
                
            </select>
        </div> --}}

        <div class="form-group">
            <label for="district">District:</label>
            <select class="form-control" id="district" name="district" required>
                <option selected="selected">Enter District</option>
                <option value="district1">District 1</option>
                <option value="district2">District 2</option>
            </select>
        </div> 

        <div class="form-group">
            <label for="tehsil">Tehsil:</label>
            <select class="form-control" id="tehsil" name="tehsil" required>
                <option selected="selected">Enter Tehsil</option>
                <option value="tehsil1">Tehsil 1</option>
                <option value="tehsil2">Tehsil 2</option>
            </select>
        </div>

        <div class="form-group">
            <label for="name">Student email:</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="Enter Student Email" required>
        </div>

        <div class="form-group">
            <label for="pno">Student Phone Number:</label>
            <input type="text" class="form-control" id="pno" name="pno" placeholder="Enter Phone Number" required>
        </div>

        <div class="genderContainer">
        <div class="form-group">
            <label>Gender:</label>
            <div class="row"><div class="col-auto">
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
                <label class="form-check-label" for="male">Male</label>
            </div>
        </div>
        <div class="col-auto">
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
                <label class="form-check-label" for="female">Female</label>
            </div>
        </div>
        <div class="col-auto">
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="other" value="Other">
                <label class="form-check-label" for="other">Other</label>
            </div>
        </div>
    </div>
    </div>

        <div class="form-group">
            <label for="DOB">Student Date of Birth:</label>
            <input type="date" class="form-control" id="DOB" name="DOB" placeholder="Enter Date of Birth" required>
        </div>

        <div class="form-group">
            <label for="TOB">Student Time of Birth:</label>
            <input type="time" class="form-control" id="TOB" name="TOB" placeholder="Enter Time of Birth" required>
        </div>

        <div class="form-group">
            <label for="addr">Student Address:</label><textarea class="form-control" id="addr" name="addr" placeholder="Enter Student Address" required></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
{{-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script> --}}
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="{{ asset('js/validation.js') }}"></script>
</body>
</html>
