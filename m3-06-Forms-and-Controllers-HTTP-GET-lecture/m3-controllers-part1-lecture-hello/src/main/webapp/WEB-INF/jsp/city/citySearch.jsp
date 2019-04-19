<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>City Search</title>
	</head>
	<body>
		<h1>City Search by Country Code</h1>
<<<<<<< HEAD
		<c:url var="citySearchUrl" value="/results"/>
		<form method="GET" action="${citySearchUrl}">
			<label for="countryCode">Country Code </label>
			<input type="text"  name="countryCode" />
			<input type="submit" value="search" />
=======
		<c:url var="citySearchUrl" value="/result" />
		<form action="${citySearchUrl}" method="GET">
			<label for="countryCode">Country Code</label>
			<input type="text" name="countryCode" />
			<input type="submit" value="Search" />
>>>>>>> 04993c21b9c982e1b34c29aa7c03e1ef5a8a191e
		</form>
	</body>
</html>