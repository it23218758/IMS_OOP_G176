<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.models.News" %>
<%@ page import="java.util.List" %>

<html>
<head>
  <title>News Management</title>
  <link rel="stylesheet" href="menustyle.css"/>
  <style>
    /* Container for centering the table */
    .container {
      width: 60%; /* Slightly reduce the width for a smaller table */
      margin: 0 auto; /* Center the container */
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1, h2 {
      text-align: center;
      color: #333;
    }

    /* Table styling */
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
      vertical-align: middle; /* Align vertically middle */
    }

    th {
      background-color: #f2f2f2;
      font-weight: bold;
    }

    /* Form and input styling */
    form input[type="text"], textarea {
      width: 95%; /* Ensure inputs take up consistent width */
      padding: 8px;
      margin: 5px 0;
      box-sizing: border-box;
      display: block; /* Make it a block element to ensure alignment */
    }

    textarea {
      resize: vertical; /* Allow vertical resize only */
      min-height: 80px; /* Default height for description */
    }

    /* Button styling */
    button {
      padding: 8px 12px;
      font-size: 14px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-right: 5px;
      transition: background-color 0.3s ease;
    }

    /* Button colors */
    .btn-add {
      background-color: #4CAF50; /* Green for Add */
      color: white;
    }

    .btn-add:hover {
      background-color: #45a049;
    }

    .btn-update {
      background-color: #007BFF; /* Blue for Update */
      color: white;
    }

    .btn-update:hover {
      background-color: #0056b3;
    }

    .btn-delete {
      background-color: #f44336; /* Red for Delete */
      color: white;
    }

    .btn-delete:hover {
      background-color: #e41f1f;
    }

    /* Center the "Back to Home" link */
    a {
      text-decoration: none;
      color: #007BFF;
      display: block;
      text-align: center;
      margin-top: 20px;
    }

    a:hover {
      color: #0056b3;
    }

    /* Align input fields properly in the table */
    td form input, td form textarea {
      width: 100%; /* Ensure inputs in table cells take the full width */
      box-sizing: border-box;
    }
  </style>
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






<div class="container">
  <h1>Manage News</h1>

  <h2>Add News</h2>
  <form action="news" method="post">
    <input type="hidden" name="action" value="create"> <!-- Specify action -->
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" required><br>

    <label for="description">Description:</label>
    <textarea name="description" id="description" required></textarea><br>

    <button type="submit" class="btn-add">Add News</button>
  </form>

  <h2>Current News</h2>
  <table>
    <thead>
    <tr>
      <th>ID</th>
      <th>Title</th>
      <th>Description</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
      List<News> newsList = (List<News>) request.getAttribute("newsList");
      if (newsList != null && !newsList.isEmpty()) {
        for (News news : newsList) {
    %>
    <tr>
      <td><%= news.getId() %></td>
      <td><%= news.getTitle() %></td>
      <td><%= news.getDescription() %></td>
      <td>
        <!-- Update form -->
        <form action="news" method="post" style="display:inline;">
          <input type="hidden" name="action" value="update">
          <input type="hidden" name="id" value="<%= news.getId() %>">
          <input type="text" name="title" value="<%= news.getTitle() %>" required>
          <textarea name="description" required><%= news.getDescription() %></textarea>
          <button type="submit" class="btn-update">Update</button>
        </form>

        <!-- Delete form -->
        <form action="news" method="post" style="display:inline;">
          <input type="hidden" name="action" value="delete">
          <input type="hidden" name="id" value="<%= news.getId() %>">
          <button type="submit" class="btn-delete">Delete</button>
        </form>
      </td>
    </tr>
    <%
      }
    } else {
    %>
    <tr><td colspan="4">No news available.</td></tr>
    <%
      }
    %>
    </tbody>
  </table>

  <a href="/IMS_OOP_G176/">Back to Home</a>
</div>
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