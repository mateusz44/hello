<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <!-- Użycie tagu jsp:useBean. Tag ten szuka obiektu klasy User z pakiecie
    javastart.jspexample.model w sesji użytkownika. Jeśli znajdzie, to go 
    wykorzysta, jeśli nie stworzy nowy obiekt klasy user o nazwie "user"-->
    <jsp:useBean id="user" class="javastart.jspexample.model.User"
        scope="session"></jsp:useBean>
 
    <!-- Użycie tagu jsp:setProperty. Tag ten umieszcza wszystkie parametry
    przesyłane z innych plików jsp pasujące do obiektu o nazwie user. Jeśli
    parametry te nie będą się zgadzać, tomcat wyrzuci wyjątkiem -->
    <jsp:setProperty property="*" name="user" />
 
    <!-- Ponowne użycie tagu jsp:useBean ładujący źródło danych. -->
    <jsp:useBean id="dataSource" class="javastart.jspexample.model.DataSource" scope="session"></jsp:useBean>

    <!-- Wyświetlenie nazwy użytkownika. -->
    <script type="text/javascript"/>

    	function validate(){
			if(document.myForm.namer.value=="")alert("wypelnij namer");	
			if(document.myForm.passwordr.value=="")alert("wypejnij pass");
    	}
    </script>
    Nazwa: <%= user.getName() %><br />
 
    <!-- Logika sprawdzająca poprawność parametrów logowania. -->
    <% String result = "Dane niepoprawne";
 
    if(dataSource.userExists(user)) {
        result = "Poprawny użytkownik oraz hasło";
        }
    %>

    <!-- Zwrócenie wynikowego stringa "result" -->
    <%= result %>
    
      <form name="myForm" method="get" action="zarejestruj.jsp">
      Rejestracja nowych uzytkownikow:
        Podaj swój login: <br />
        <input type="text" name="namer" /><br /> 
        Podaj swoje hasło: <br />
        <input type="text" name="passwordr" /><br /> 
        <input type="submit" value="zarejestruj" onClick="validate()">
         <select name="country">
        <option>poslka</option>
        <option>Czechy</option>
        <option>Irlandia</option>
        <option>Moldawia</option>
        </select>
               <input type="checkbox" name ="newsletter" value="newsletter" /> newsletter
        <input type="checkbox" name ="newsletter" value="marketingoffer" /> marketing offer
        <input type="checkbox" name ="newsletter" value="specialoffer" /> special offer
    </form>
</body>
</html>