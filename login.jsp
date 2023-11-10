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
          <li class="selected"><a href="index.html">Home</a></li>
          <li><a href="hcourse.jsp">Courses</a></li>
          <li><a href="hlogin.jsp">Login</a></li>
          <li><a href="register.jsp">Sign Up</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      
        <div id="content">
            <%
    String mail = request.getParameter("email");    
    String pwd = request.getParameter("pass");
    
      // converting password to hash
     mdjavahash md = new mdjavahash();
     pwd = md.getHashPass(pwd);
    //Hashing done
    
    
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false","root","Wrhrs&34");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from Login");
    int x = 0;
    while (rs.next()) {
        if((rs.getString("Email").equals(mail)) && rs.getString("Password").equals(pwd))
        {
            String typ = rs.getString("UType");
            if(typ.equals("Admin"))
            {
                x = 1;
                con.close();
                break;
            }
            if(typ.equals("Student"))
            {
                x = 2;
                con.close();
                break;
            }
        }
    }     

    if(x == 2) {
        session.setAttribute("mail", mail);
        response.sendRedirect("Student");
    }
    else if(x == 1){
        session.setAttribute("mail", mail);
        response.sendRedirect("admin.html");
    }
    
    else {
        out.println("Invalid Credentials.Try again");
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
