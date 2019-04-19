<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp">
    <c:param name="pageTitle" value="Contact List" />
</c:import>

<<<<<<< HEAD
<H1>Contact List</H1>
=======
<h1>Contact List</h1>
>>>>>>> 050f82aa23d1823b39ea0a0d0f7e771f4310128e
<div>
	<c:url var="searchContactUrl" value="/searchContacts" />
	<form action="${searchContactUrl}" method="GET" >
		<input type="text" id="" name="searchTerm" />
<<<<<<< HEAD
		<input type="submit" />
 	</form>
</div>
=======
		<input type="submit" /> 
	</form>

</div>


>>>>>>> 050f82aa23d1823b39ea0a0d0f7e771f4310128e
<table>
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Date Added</th>
	</tr>
<<<<<<< HEAD
		<c:forEach var="contact" items="${contacts}" >

	<tr>
		<td><c:out value="${contact.firstName}"/></td>
		<td><c:out value="${contact.lastName}"/></td>
		<td><c:out value="${contact.dateAdded}"/></td>
	</tr>
${contact.firstName}

</c:forEach>
=======
	<c:forEach var="contact" items="${contacts}" >
		<tr>
			<td><c:out value="${contact.firstName}" /></td>
			<td><c:out value="${contact.lastName}" /></td>
			<td><c:out value="${contact.dateAdded}" /></td>
		</tr>
	</c:forEach>
>>>>>>> 050f82aa23d1823b39ea0a0d0f7e771f4310128e
</table>

<div>
	<c:url var="addContactUrl" value="/addContact" />
	<a href="${addContactUrl}">Add Contact</a>
</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />