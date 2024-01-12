document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("studentForm");

    form.addEventListener("submit", function (event) {
        // Perform custom validation before submitting the form
        if (!validateName() || !validateAddress() || !validatePhoneNumber() || !validateEmail()) {
            event.preventDefault(); // Prevent form submission if validation fails
        }
    });

    function validateName() {
        const nameInput = document.getElementById("name");
        const nameValue = nameInput.value;

        // Check if the name contains any numeric characters
        if (/[\d]/.test(nameValue)) {
            alert("Student name should not contain numeric characters.");
            return false;
        }
        if (/[^a-zA-Z0-9]/.test(nameValue)) {
            alert("Student name should not contain special characters.");
            return false;
        }

        return true;
    }

    function validateEmail() {
        const emailInput = document.getElementById('email');
        const emailValue = emailInput.value;
        if (!/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(emailValue)) {
            alert("Invalid email.");
            return false;
        }
        return true;
    }
    

    
    function validatePhoneNumber() {
        const pnoInput = document.getElementById("pno");
        const pnoValue = pnoInput.value;

        // Check if the phone number contains only digits and is 10 digits long
        if (!/^\d{10}$/.test(pnoValue)) {
            alert("Please enter a valid phone number (10 digits).");
            return false;
        }

        return true;
    }
    function validateAddress() {
        const addrInput = document.getElementById("addr");
        const addrValue = addrInput.value;

        // Check if the address contains any special characters
        if (/[^a-zA-Z0-9\s]/.test(addrValue)) {
            alert("Student address should not contain special characters.");
            return false;
        }

        return true;
    }

    // function validateDOB(){
    //     const dobInput = document.getElementById("DOB");

    //     $(dobInput).datepicker({
    //         format: 'yyyy-mm-dd',
    //         autoclose: true,
    //         endDate: '2020-12-31', // Set the end date
    //         startDate: '1920-01-01', // Set the start date
    //     });
    //     const dobRegex = /^(19[2-9]\d|200\d|201[0-9]|2020)-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$/;


    //     if (!dobRegex.test(dobValue)) {
    //         alert("Please enter a valid date of birth between 1920 and 2020.");
    //         return false;
    //     }

    //     // Optionally, you can check if the date is within the last 3 years
    //     const currentDate = new Date();
    //     const threeYearsAgo = new Date();
    //     threeYearsAgo.setFullYear(currentDate.getFullYear() - 3);

    //     if (new Date(dobValue) > threeYearsAgo) {
    //         alert("Date of birth should be at least 3 years ago.");
    //         return false;
    //     }

    //     return true;
    // }    

});
