document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("studentForm");

    form.addEventListener("submit", function (event) {
        // Perform custom validation before submitting the form
        if (!validateName() || !validateAddress() || !validatePhoneNumber()) {
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
});
