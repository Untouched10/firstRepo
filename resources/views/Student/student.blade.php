<!DOCTYPE html>!
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Student Details Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .genderContainer {
            margin-bottom: 50px;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="card col-md-6 mx-auto">
        <div class="card-header">
            <h2 class="mb-0">Student Details Form</h2>
        </div>
        <div class="card-body">
    
    <form method="post" action="{{ route('store.Student') }}" id="studentForm">
        @csrf
        @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    {{-- <div class="form-group">
        <label for="sid">Student ID:</label>
        <input type="text" class="form-control" id="sid" name="sid" placeholder="Enter Student ID" required>
    </div>  --}}

    <div class="form-group">
        <label for="name">Student Name:</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Student Name" required>
    </div>

    <!-- State Dropdown -->
    <div class="form-group">
    <label for="state">Select State:</label>
    <select class="form-control" id="state" name="state" onchange="getDistricts()">
        <option value="">Select State</option>
        @foreach($states as $state)
            <option value="{{ $state->id }}">{{ $state->sname }}</option>
        @endforeach
    </select></div>

    <!-- District Dropdown -->
    <div class="form-group">
    <label for="district">Select District:</label>
    <select class="form-control" id="district" name="district" onchange="getTehsils()" disabled>
        <option value="">Select District</option>
    </select></div>

    <!-- Tehsil Dropdown -->
    <div class="form-group">
    <label for="tehsil">Select Tehsil:</label>
    <select class="form-control" id="tehsil" name="tehsil" disabled>
        <option value="">Select Tehsil</option>
    </select>
</form></div>

         

        {{--<div class="form-group">
            
            <label for="state">State:</label>
            <select class="form-control" id="state" name="state" required>
                <option selected="selected">Select State</option>
                @foreach($states as $id => $state)
                    <option value="{{ $id }}">{{ $state }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="district">District:</label>
            <select class="form-control" id="district" name="district" required>
                <option selected="selected">Enter District</option>
                @foreach($districts as $did => $district)
                    <option value="{{ $did }}">{{ $district }}</option>
                @endforeach
            </select>
        </div> 

        <div class="form-group">
            <label for="tehsil">Tehsil:</label>
            <select class="form-control" id="tehsil" name="tehsil" required>
                <option selected="selected">Enter Tehsil</option>
                <option value="tehsil1">Tehsil 1</option>
                <option value="tehsil2">Tehsil 2</option>
            </select>
        </div> --}}

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
<script>
    function getDistricts() {
        var stateId = document.getElementById('state').value;
        if (stateId) {
            // Fetch districts based on selected state
            fetch('/get-districts', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                },
                body: JSON.stringify({ state_id: stateId })
            })
            .then(response => response.json())
            .then(data => {
                var districtDropdown = document.getElementById('district');
                districtDropdown.innerHTML = '<option value="">Select District</option>';
                data.forEach(district => {
                    districtDropdown.innerHTML += `<option value="${district.id}">${district.dname}</option>`;
                });
                districtDropdown.removeAttribute('disabled');
            });
        } else {
            // If no state selected, disable and reset district and tehsil dropdowns
            document.getElementById('district').disabled = true;
            document.getElementById('tehsil').disabled = true;
            document.getElementById('district').innerHTML = '<option value="">Select District</option>';
            document.getElementById('tehsil').innerHTML = '<option value="">Select Tehsil</option>';
        }
    }

    function getTehsils() {
        var districtId = document.getElementById('district').value;
        if (districtId) {
            // Fetch tehsils based on selected district
            fetch('/get-tehsils', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                },
                body: JSON.stringify({ district_id: districtId })
            })
            .then(response => response.json())
            .then(data => {
                var tehsilDropdown = document.getElementById('tehsil');
                tehsilDropdown.innerHTML = '<option value="">Select Tehsil</option>';
                data.forEach(tehsil => {
                    tehsilDropdown.innerHTML += `<option value="${tehsil.id}">${tehsil.tname}</option>`;
                });
                tehsilDropdown.removeAttribute('disabled');
            });
        } else {
            // If no district selected, disable and reset tehsil dropdown
            document.getElementById('tehsil').disabled = true;
            document.getElementById('tehsil').innerHTML = '<option value="">Select Tehsil</option>';
        }
    }
</script>
{{-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script> --}}
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="{{ asset('js/validation.js') }}"></script>
</body>
</html>
