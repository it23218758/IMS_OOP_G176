
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="views/Home.css">
    <link rel="stylesheet" href="views/menustyle.css">
</head>
<body>

<div class = "navdiv">
    <div class = "logo"> <a href = "/IMS_OOP_G176/"><img src = "views/img/SLIIT IMS.png"></a></div>
    <nav class = "navbar">
        <ul>
            <li><a href = "/IMS_OOP_G176/">Home</a></li>
            <li><a href = "">Club & Society</a></li>
            <li><a href = "views/NewsandEvent.jsp">Event & News</a></li>
            <li><a href = "">Sports</a></li>
            <li><a href = "">Contact Us</a></li>
            <li><a href = "">About Us</a></li>
            <button class="buttons"><a href = "">Register</a></button>
            <button class="buttons"><a href = "views/login.jsp">Login</a></button>
            <button class="buttons"><a href = "">Profile</a></button>
        </ul>
    </nav>
</div>

<br>


<div class="slider">


    <div class="list">

        <div class="item">
            <img src="views/img/pexels-photo-2132891.jpeg" alt="">

            <div class="content">
                <div class="title" style="font-size: 100px; margin-top: -50px ">Welcome to SLIIT School</div>

                <div class="description"style="font-size: 30px;color: aliceblue">
                    Education is the key to Unlocking the world ,A Passport to freedom.

                </div>
                <div class="button">
                    <button>LOGIN</button>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="views/img/img7.jpg" alt="">

            <div class="content">
                <div class="title"style="font-size: 80px;color: aliceblue;">Clubs</div>
                <div class="type"style="font-size: 80px;color: aliceblue;">& Societies</div>
                <div class="description"style="font-size: 16px; color: aliceblue">
                    School clubs and societies provide students with valuable opportunities to explore their interests, develop new skills, and foster a sense of community. These extracurricular groups, ranging from academic societies to sports teams and cultural clubs, help students build leadership, teamwork, and social skills outside the classroom. Participation in such activities not only enhances students' personal growth but also enriches their overall educational experience, preparing them for future challenges in both academic and professional settings.
                </div>
                <div class="button">
                    <button>Explore</button>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="views/img/img5.jpg" alt="">

            <div class="content">
                <div class="title"style="font-size: 80px;color: aliceblue;">Sports</div>
                <div class="type"style="font-size: 80px;color: aliceblue;">with Leadership</div>
                <div class="description"style="font-size: 16px; color: aliceblue">
                    Sports play a vital role in developing leadership skills by promoting teamwork, discipline, and strategic thinking. Athletes often find themselves in situations that require quick decision-making, effective communication, and the ability to motivate others—all key qualities of strong leaders. Through sports, individuals learn to take responsibility, lead by example, and handle both success and failure with grace. These experiences help shape confident and resilient leaders, equipped to tackle challenges both on and off the field.

                </div>
                <div class="button">
                    <button>Explore</button>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="views/img/free-photo-of-audience-standing-with-arms-raised.jpeg" alt="">

            <div class="content">
                <div class="title" style = "font-size: 80px; color: aliceblue;">Event</div>
                <div class="type"style = "font-size: 80px; color: aliceblue;">& News</div>
                <div class="description"style="font-size: 16px; color: aliceblue">
                    School events and news serve as a dynamic platform for celebrating student achievements, fostering community spirit, and keeping everyone informed about important updates. Whether it's academic milestones, cultural festivals, or sports competitions, these events bring the school community together and highlight the diverse talents within it. Regular updates through newsletters or announcements keep students, parents, and staff engaged and aware of upcoming activities, fostering a sense of unity and pride in the school's accomplishments.
                </div>
                <div class="button">
                    <button>Explore</button>
                </div>
            </div>
        </div>

    </div>


    <div class="thumbnail">

        <div class="item">
            <img src="views/img/pexels-photo-2132891.jpeg" alt="">
        </div>
        <div class="item">
            <img src="views/img/img7.jpg" alt="">
        </div>
        <div class="item">
            <img src="views/img/img5.jpg" alt="">
        </div>
        <div class="item">
            <img src="views/img/free-photo-of-audience-standing-with-arms-raised.jpeg" alt="">
        </div>

    </div>


    <div class="nextPrevArrows">
        <button class="prev"> < </button>
        <button class="next"> > </button>
    </div>


</div>

<script src="views/Home.js"></script>


<footer>
    <div class="footer" >
        <div style = "height:250px; width: 460px; float:left; position: absolute; left: 0%; margin-left: inherit;">
            <table class = "table">
                <tr>
                    <td><a href = "https://www.instagram.com/sliitims_official_/" target="_blank"><img src = "views/img/3.png" title="visit our instagram page"></a></td>
                    <td><a href = "https://www.facebook.com/share/gMEFjxw3TwxU4eLd/?mibextid=LQQJ4d" target="_blank"><img src = "views/img/1.png" title="visit our facebook page"></a></td>
                    <td><a href = "https://twitter.com/officialFoodify" target="_blank"><img src = "views/img/2.png" title="visit our twitter page"></a></td>
                    <td><img src = "views/img/4.png" title="Contact us through Whatsapp : +94(76) 441 4442"></td>
                </tr>
            </table>

        </div>

        <div style = "height:250px; width: 600px; float:left; align-content: center; position: absolute; left:30%;">
            <a  href = "/IMS_OOP_G176/"><img src = "views/img/SLIIT IMS.png" style = "width: 220px ; height:180px; margin-left: 29%; border-radius: 10% ; " ></a>
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
