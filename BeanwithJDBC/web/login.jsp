<%-- 
   Program to store data in a database using Java bean and jdbc..
   I am using mysql 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Hello Please enter the the following info!</h1>
        <form method="post" action="processlogin.jsp">
            username:<input type="text" name="uname">  <br>
            Password:<input type="password" name="pwd"> <br>
            <input  type="submit" value="submit"><br>
        </form>

        
    </center>
    </body>
</html>
