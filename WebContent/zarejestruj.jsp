<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
    <jsp:useBean id="user" class="javastart.jspexample.model.User" scope="session"></jsp:useBean>
    <jsp:useBean id="dataSource" class="javastart.jspexample.model.DataSource" scope="session"></jsp:useBean>

    <!-- Wyświetlenie nazwy użytkownika.    <jsp:setProperty property="*" name="user"/> -->
    <%@ page import="javastart.jspexample.model.*" %>
    <%! String hello(String str){
    	 return str.toLowerCase();}
    %>
    <%= new java.util.Date() %>
        <%= new String("fffff").toUpperCase() %>
        <% for(int i=0; i<5 ;i++)
        		out.println("<br> line" +i);
        dataSource.register(user.getPasswordr(),user.getNamer());
        %>
        <%=
          hello("KELLO")
        %>
        <%= User.hello(user.getNamer()) %>
       : <%= dataSource.getUser(user) %>
       <% 
         String [] news = request.getParameterValues("newsletter");
       for(String str : news)
    	   out.println("<li>"+str);
       %>
 ${param.country}
</body>
</html>