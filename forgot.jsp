
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
    String mail = request.getParameter("em");    
    String pwd = request.getParameter("pa");
    String cpwd = request.getParameter("cpa");
     
if(pwd.equals(cpwd))
{
        
      // converting password to hash
     mdjavahash md = new mdjavahash();
     cpwd = md.getHashPass(cpwd);
    //Hashing done
    
    
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false","root","Wrhrs&34");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select Email from Login");
    int x = 0;
    while (rs.next()) {
        if((rs.getString("Email").equals(mail)))
        {
            x = 1;
        }
    }     

    if(x == 1) {
        PreparedStatement ch = con.prepareStatement(" update Students set Password='"+cpwd+"' where Email='"+mail+"'");
        ch.executeUpdate();
        
        con.prepareStatement(" update Login set Password='"+cpwd+"' where Email='"+mail+"'").executeUpdate();
        out.println("<h2>Password Update Successful</h2><br><a href='hlogin.jsp'>Click here to Login</a>");
    }
    else {
        out.println("Email does not exist. Try again");
    }
    con.close();
}
else
{
    out.print("Mismatch");
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