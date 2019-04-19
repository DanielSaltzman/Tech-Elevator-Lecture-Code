<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
<<<<<<< HEAD
		<title>City Search result</title>
	</head>
	<body>
		<h1>Result for Country Code</h1>
		<ul>
			<c:forEach var="city" items="${cities}">
			
			<li><c:out value="${city.name}"/></li>
			</c:forEach>		
=======
		<title>City Search Result</title>
	</head>
	<body>
		<h1>Results for Country Code </h1>
		
		<ul>
			<c:forEach var="city" items="${cities}" >
				<li><c:out value="${city.name}" /></li>
			</c:forEach>
>>>>>>> 04993c21b9c982e1b34c29aa7c03e1ef5a8a191e
		</ul>
	</body>
</html>