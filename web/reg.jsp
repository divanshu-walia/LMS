<%@ page import ="java.sql.*, java.security.*, mdhash.*" %>

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
          <li><a href="hcourse.jsp">Courses</a></li>
          <li><a href="hlogin.jsp">Login</a></li>
          <li class="selected"><a href="register.jsp">Sign Up</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      
        <div id="content">
           <%
    
    String fname = request.getParameter("f_name");
    String lname = request.getParameter("l_name");
    String email = request.getParameter("e_mail");
    String pwd = request.getParameter("pass");
    
    // converting password to hash
     mdjavahash md = new mdjavahash();
     pwd = md.getHashPass(pwd);
    //Hashing done
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false","root","Wrhrs&34");
    PreparedStatement ps = con.prepareStatement("insert into Students(F_Name, L_Name, Email, Password) values ('" + fname + "','" + lname + "','" + email + "','" + pwd + "') ");
    //ResultSet rs;
    int i =ps.executeUpdate();
    if (i > 0) {
        //session.setAttribute("userid", user);
       // response.sendRedirect("welcome.jsp");
       out.print("Registration Successfull!"+"<a href='hlogin.jsp'>Go to Login</a>");
        String utype = "Student";
        PreparedStatement qr = con.prepareStatement("insert into Login(Email, Password, UType) values ('" + email + "','" + pwd + "','" +utype+ "') ");
        qr.executeUpdate();
        con.close();
    } else {
        response.sendRedirect("index.jsp");
    }

%>

        </div>
    </div>
    
    <div id="footer">
      Project | Let's Learn |
    </div>
  </div>
</body>
</html>
