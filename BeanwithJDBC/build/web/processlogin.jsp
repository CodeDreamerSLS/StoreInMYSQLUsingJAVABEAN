<%-- 
  
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
        <jsp:useBean id="mybeans" class="com.test.Info"/>
        <jsp:setProperty property="*" name="mybeans"/>
        <div>
            Your entered info: <br>
        username: <jsp:getProperty property="uname" name="mybeans"/><br>
        password: <jsp:getProperty property="pwd" name="mybeans"/><br>
            
        </div>
        
        <%
           int result=mybeans.store();
           if(result==1){
              out.print("You have successsfully stored it......");
           }else{
               out.print("You have error while storing....");
           }
       %>
      </center>  
    </body>
</html>
