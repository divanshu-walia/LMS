<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE HTML>
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
          <li><a href="index.html">Home</a></li>
          <li  class="selected"><a href="hcourse.jsp">Courses</a></li>
          <li><a href="hlogin.jsp">Login</a></li>
          <li><a href="register.jsp">Sign Up</a></li>
          <li><a href="Student">Student</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div id="content">
        <!-- insert the page content here -->
        <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false"
        user="root" password="Wrhrs&34"
       />
     
        <sql:query var="listCourse"   dataSource="${myDS}">
        SELECT * FROM Courses;
        </sql:query>
     
        
            <h2>Available Courses</h2>
            <table>
                <thead>
                    <tr>
                        <th>Course Id</th>
                        <th>Course Name</th>
                        <th>Course Category</th>
                        <th>Course Mode</th>
                        <th>Course Duration</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${listCourse.rows}">
                    <tr>
                     <td><c:out value="${course.C_ID}" /></td>
                     <td><c:out value="${course.Name}" /></td>
                     <td><c:out value="${course.Category}" /></td>
                     <td><c:out value="${course.Mode}" /></td>
                     <td><c:out value="${course.Duration}" /></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
                   <button class="btn success" onclick="location.href='course_form.jsp'" type="button">Click to Enroll</button> 
       
      </div>
    </div>
    <div id="footer">
      Project | Let's Learn |
    </div>
  </div>
</body>
</html>
