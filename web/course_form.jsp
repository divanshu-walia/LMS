<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <% String sn = (String)session.getAttribute("mail");
         if(session.getAttribute("mail") == null){
             out.println("Please Login First.");
             response.sendRedirect("hlogin.jsp");
         }
         else {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false","root","Wrhrs&34");
            PreparedStatement ps = con.prepareStatement("select Name from Courses");
            ResultSet rs = ps.executeQuery();
            
            
        %>
        <h1>Course Enrollment</h1>
        <br>
        <form action="enroll.jsp">
                <p><input type="text" name="t1" placeholder="Name" required/></p>
                <p><input type="email" name="t2" placeholder="Email" required/></p>
                
                    
                        <p>Course Subject<br> <select name="s1" required >
                                    <option value="">                 </option> 
                                    <% while(rs.next()){
                                     %>
                                   
                                <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                    <%}%>
                                </select><br />
                        </p>
                   
                
            <input type="submit" name="submit" value="Submit"><br>  
            <% con.close();
            }%>
        </form>
    </div>
    </div>
    <div id="footer">
      Project | Let's Learn |
    </div>
  </div>
</body>
</html>