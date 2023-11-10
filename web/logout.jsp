<%
session.setAttribute("mail", null);
session.invalidate();
response.sendRedirect("index.html");
%>