<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <script type="text/javascript"/>

    	function validate(){
			if(document.myForm.name.value=="")alert("wypelnij namer");	
			if(document.myForm.password.value=="")alert("wypejnij pass");
    	}
    </script>
      <form name="myForm" method="get" action="my-array.jsp">
        Podaj swój login: <br />
        <input type="text" name="name" /><br /> 
        Podaj swoje hasło: <br />
        <input type="password" name="password" /><br /> 
        <input type="submit" value="zarejestruj" onClick="validate()">

    </form>
</body>
</html>