<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type=text/javascript>
function validate(){
	if(document.myForm.searchjob.value=="")alert("give string");
}
</script>
</head>
<body> 
<div>
<table>
<tr><td bgColor="grey">Szukaj ofert pracy</td><td>|</td>
<td><a href="dodaj_ogloszenie.jsp"> dodaj ogloszenie</a></td><td>|</td>
<td><a href="dodaj_cv.jsp">dodaj swoje cv</a></td><td>|</td>
<td><a href="zaloguj.jsp">login</a></td></tr>
</table>
</div>

<table style="position:absolute;left:300px">
  <script type="text/javascript"/>
    	function validate(){
			if(document.myForm.searchjob.value=="")alert("wypelnij numer");	 
    	}
    </script>
      <form name="myForm" method="get" action="list-job.jsp">

        <input type="text" name="searchjob" /><br /> 
 
        <input type="submit" value="zarejestruj" onClick="validate()">

    </form>
</table>
</body>
</html>

 