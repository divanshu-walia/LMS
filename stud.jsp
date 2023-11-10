
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
  <title>Let's Learn</title>
  <meta name="LMS" content="e-learning platform" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Let's<span class="logo_colour">Learn</span></a></h1>
          <h2>Learning Management System</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.html">Home</a></li>
          <li><a href="hcourse.jsp">Courses</a></li>
          <li><a href="hlogin.jsp">Login</a></li>
          <li><a href="register.jsp">Sign Up</a></li>
          <li><a href="Student">Student</a></li>
          <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      
        <div id="content">
    <% String id =request.getParameter("id");
       String root="Courses/";
       java.io.File file;
       java.io.File dir = new java.io.File(root); 
       String path = root+id+"/";
    %>
     
    <div align="center">
        <h2>Welcome <%=session.getAttribute("mail") %></h2>
        <br><br><br>
      <h4>Lecture 1</h4>
        <p> <video controls width="480"> 
            <source src="<%=path%>1.mp4" type="video/mp4">
            Sorry, browser obsolete.
            </video>
        </p>    
        <h4>Lecture 2</h4>
        <p> <video controls width="480" > 
            <source src="<%=path%>2.mp4" type="video/mp4">
            Sorry, browser obsolete.
            </video>
        </p>
    </div>
  </div>
    </div>
    
    <div id="footer">
      Project | Let's Learn |
    </div>
  </div>
</body>
</html>




