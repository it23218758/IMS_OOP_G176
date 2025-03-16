<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Card-slider | MicroCoding</title>
    <!-- Google fonts link for icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,1,0" />
    <!-- Swiper CSS link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <!-- CSS link -->
    <link rel="stylesheet" href="newsandevent.css"/>
    <link rel="stylesheet" href="menustyle.css"/>
</head>
<body>
<div class = "navdiv">
    <div class = "logo"> <a href = "/IMS_OOP_G176/"><img src = "img/SLIIT IMS.png"></a></div>
    <nav class = "navbar">
        <ul>
            <li><a href = "/IMS_OOP_G176/">Home</a></li>
            <li><a href = "">Club & Society</a></li>
            <li><a href = "NewsandEvent.jsp">Event & News</a></li>
            <li><a href = "">Sports</a></li>
            <li><a href = "">Contact Us</a></li>
            <li><a href = "">About Us</a></li>
            <button class="buttons"><a href = "">Register</a></button>
            <button class="buttons"><a href = "login.jsp">Login</a></button>
            <button class="buttons"><a href = "">Profile</a></button>
        </ul>
    </nav>
</div>


<h2><center>News</center></h2>
<div class="container swiper">
    <div class="slider-wrapper">
        <div class="card-list swiper-wrapper">
            <div class="card-item swiper-slide">
                <img src="img/card8.jpg" alt="User Profile" class="user-image" />
                <h3 class="user-name">Parents Meeting</h3>
                <p class="review-text"><b>"Parents meeting held on "</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card3.jpg" alt="User Profile" class="user-image" />
                <h3 class="user-name">Back to school</h3>
                <p class="review-text"><b>"school start 2024-02-02"</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card1.jpg" alt="User Profile" class="user-image" />
                <h3 class="user-name">Exam Week</h3>
                <p class="review-text"><b>"All the exams alocated belove time tables"</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card9.jpg" alt="User Profile" class="user-image" />
                <h3 class="user-name">Admission</h3>
                <p class="review-text"><b>"Get your Addmission hurry up.."</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card11.jpg" alt="User Profile" class="user-image" />
                <h3 class="user-name">Holiday Notice</h3>
                <p class="review-text"><b>"Academic works not conducted"</b></p>

            </div>
        </div>

        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</div> <a href="news"  class="card__button" onclick="manageNewsPasswordPrompt()">Manage News</a>
<script>
    // JavaScript function to prompt for password and validate it
    function manageNewsPasswordPrompt() {
        const correctPassword = "IT1234";
        let attempts = 0;
        let password;

        // Loop until the password is correct or maximum attempts reached
        while (attempts < 3) {
            password = prompt("Enter the password to manage news:");

            // Check if the password matches
            if (password === correctPassword) {
                alert("Password is correct! Redirecting to the Manage News page...");
                window.location.href = "manageNews.jsp"; // Redirect to manage news page
                return; // Exit the function after redirection
            } else {
                alert("Incorrect password. Please try again.");
                attempts++; // Increment attempts
            }
        }

        // If maximum attempts reached
        alert("Too many incorrect attempts. Please refresh the page to try again.");
    }
</script>

<br> </br>

<h2><center>Events</center></h2>
<div class="container swiper">
    <div class="slider-wrapper">
        <div class="card-list swiper-wrapper">
            <div class="card-item swiper-slide">
                <img src="img/card2.jpg" alt="Event" class="user-image" />
                <h3 class="user-name">Football match</h3>
                <p class="review-text"><b>"Join with us enjoy your day!"</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card14.jpg" alt="Event" class="user-image" />
                <h3 class="user-name">Art Exhibition</h3>
                <p class="review-text"><b>"Explore creative artworks and talents."</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card12.jpg" alt="Event" class="user-image" />
                <h3 class="user-name">AnualTrip</h3>
                <p class="review-text"><b>"It will be held on march 30"</b></p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card10.jpg" alt="Event" class="user-image" />
                <h3 class="user-name">Colors night</h3>
                <p class="review-text">"come and see students aura"</p>

            </div>
            <div class="card-item swiper-slide">
                <img src="img/card13.jpg" alt="Event" class="user-image" />
                <h3 class="user-name">Music Festival</h3>
                <p class="review-text">"Experience the best local talents."</p>

            </div>
        </div>

        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</div>
<a href="event" class="card__button" onclick="manageEventsPasswordPrompt()">Manage Events</a>
<script>
    // JavaScript function to prompt for password and validate it
    function manageEventsPasswordPrompt() {
        const correctPassword = "IT1234";
        let attempts = 0;
        let password;

        // Loop until the password is correct or maximum attempts reached
        while (attempts < 3) {
            password = prompt("Enter the password to manage events:");

            // Check if the password matches
            if (password === correctPassword) {
                alert("Password is correct! Redirecting to the Manage Events page...");
                window.location.href = "manageEvents.jsp"; // Redirect to manage events page
                return; // Exit the function after redirection
            } else {
                alert("Incorrect password. Please try again.");
                attempts++; // Increment attempts
            }
        }

        // If maximum attempts reached
        alert("Too many incorrect attempts. Please refresh the page to try again.");
    }
</script>
<br></br>

<br></br>
<!-- Adding swiper js script -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- Adding custom script -->
<script src="main.js"></script>
<footer>
    <div class="footer" >
        <div style = "height:250px; width: 460px; float:left; position: absolute; left: 0%; margin-left: inherit;">
            <table class = "table">
                <tr>
                    <td><a href = "https://www.instagram.com/sliitims_official_/" target="_blank"><img src = "img/3.png" title="visit our instagram page"></a></td>
                    <td><a href = "https://www.facebook.com/share/gMEFjxw3TwxU4eLd/?mibextid=LQQJ4d" target="_blank"><img src = "img/1.png" title="visit our facebook page"></a></td>
                    <td><a href = "https://twitter.com/officialFoodify" target="_blank"><img src = "img/2.png" title="visit our twitter page"></a></td>
                    <td><img src = "img/4.png" title="Contact us through Whatsapp : +94(76) 441 4442"></td>
                </tr>
            </table>

        </div>

        <div style = "height:250px; width: 600px; float:left; align-content: center; position: absolute; left:30%;">
            <a  href = "/IMS_OOP_G176/"><img src = "img/SLIIT IMS.png" style = "width: 220px ; height:180px; margin-left: 29%; border-radius: 10% ; " ></a>
            <p style = "font-weight: 500; margin-left: 29%; color: rgb(47, 54, 66);">©2024 SliiIMS Inc. All Rights Reserved</p>

        </div>

        <div style = "height:250px; width: 460px; float:left;align-content: center; position: absolute; left:70%; color: black;font-size: medium;">

            <ul type = "none">
                <li>✆ +94(76) 441 4442</li>
                <li>✆ +94(76) 369 7342</li>
                <li>☏ +94(11) 551 7723</li>
                <li>✉ info@sliitims.com</li>
                <li>🔗<a href = "/IMS_OOP_G176/" style = "text-decoration: none; color: rgb(41, 40, 40);"> www.SliiIMS.com</a></li>
                <br>
                <li><a href = "#" style = "text-decoration:underline; color: rgb(62, 62, 63);">Give Us Your Feedback!</a></li>

            </ul>
        </div>
    </div>
</footer>

</body>
</html>