<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
          <li><a href="hcourse.jsp">Courses</a></li>
          <li><a href="hlogin.jsp">Login</a></li>
          <li class="selected"><a href="register.jsp">Sign Up</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      
        <div id="content">
            <div class="login">
                <form method="post" action="reg.jsp">
        
                    <h2>Enter Information Here</h2>
                    <p><input type="text" name="f_name" placeholder="First Name" required/></p>
                    <p><input type="text" name="l_name" placeholder="Last Name" required/></p>
                    <p><input type="email" name="e_mail" placeholder="Email" required/></p>
                    <p><input type="password" name="pass" placeholder="Password" required/></p>
                    
                    <p class="submit"><input type="submit" value="Register"></p>
                </form>
            </div>
        </div>
    </div>
    
    <div id="footer">
      Project | Let's Learn |
    </div>
  </div>
</body>
</html>
