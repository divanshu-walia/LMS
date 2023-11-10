<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <%
          Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false","root","Wrhrs&34");
            String address = request.getParameter("t2");
            String sub = request.getParameter("s1");
            
           String sn = (String)session.getAttribute("mail");
           if(sn.equals(address)){
         con.createStatement().executeUpdate("insert into Enroll (EDate, C_Id, S_Id) values (CURRENT_TIMESTAMP, (select C_ID from Courses where Name='"+sub+"'), (select S_ID from Students where Email='"+address+"'))");
           con.close();
           out.print("Sucessfuly enrolled to the course.");
           response.sendRedirect("Student");
        }
        else
            out.print("Invalid Email Address");%>
    </div>
    </div>
    <div id="footer">
      Project | Let's Learn |
    </div>
  </div>
</body>
</html>
