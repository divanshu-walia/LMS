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
          <li class="selected"><a href="hlogin.jsp">Login</a></li>
          <li><a href="register.jsp">Sign Up</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      
        <div id="content">
            <div class="login">
                <form method="post" action="login.jsp">
        
                    <h2>Login Here</h2>
                    <p><input type="email" name="email" placeholder="Email" required/></p>
                    <p><input type="password" name="pass" placeholder="Password" required/></p>
                    <p class="remember_me">
                        <label>
                            <input type="checkbox" name="remember_me" id="remember_me">
                                Remember me on this computer
                            </label>
                    </p>
                    <p class="submit"><input type="submit" value="Login"></p>
                   
                        <p>Forgot your password? <a href="forgot.html">Click here to reset it</a>.</p>
                    
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
