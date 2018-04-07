 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <jsp:useBean id="user" class="javastart.jspexample.model.User"
        scope="session"></jsp:useBean>
 
    <jsp:setProperty property="*" name="user" />
 

    <jsp:useBean id="dataSource" class="javastart.jspexample.model.DataSource" scope="session"></jsp:useBean>


    Nazwa: <%= user.getName() %><br />
 
 
    <% String result = "Dane niepoprawne";
 
    if(dataSource.userExists(user)) {
        result = "witaj ";
        }
    %>


    <%= result %>
    </body>
    </html>