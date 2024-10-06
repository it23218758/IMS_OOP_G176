// Select the sign-in and sign-up buttons
const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

// Add event listeners to handle form switching animations
sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

// Handle the login process
document.querySelector(".sign-in-form").addEventListener("submit", function (e) {
  e.preventDefault(); // Prevent form submission

  const username = document.querySelector(".sign-in-form input[type='text']").value;
  const password = document.querySelector(".sign-in-form input[type='password']").value;

  // Admin login
  if (password === "IT1234") {
    alert("Admin login success!");
    window.location.href = "/IMS_OOP_G176/"; // Redirect to the home page for admin
  } 
  // User login
  else if (password === "ST2244") {
    alert("User login success!");
    window.location.href = "/IMS_OOP_G176/"; // Redirect to the home page for users
  } 
  // Invalid login
  else {
    alert("Invalid username or password!");
  }
});

// Handle the sign-up process (optional, modify based on your needs)
document.querySelector(".sign-up-form").addEventListener("submit", function (e) {
  e.preventDefault(); // Prevent form submission

  const username = document.querySelector(".sign-up-form input[type='text']").value;
  const email = document.querySelector(".sign-up-form input[type='email']").value;
  const password = document.querySelector(".sign-up-form input[type='password']").value;

  if (username && email && password) {
    alert("Registration successful!");
    // Here you can redirect to a different page if needed or store the user info
  } else {
    alert("Please fill in all fields.");
  }
});