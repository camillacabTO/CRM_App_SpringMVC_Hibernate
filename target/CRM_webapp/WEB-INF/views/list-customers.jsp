<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Customer Relationship Management System</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>
<body>


<div id="container">
    <header>
        <h1>CRM - Customer Relationship Manager</h1>
    </header>

    <form:form action="searchCustomer" method="get" cssClass="searchForm">
        <label>Search Customer:
            <input type="text" name="searchName">
        </label>
        <input type="submit" value="Search" class="button">
    </form:form>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>E-mail</th>
            <th>Edit</th>
        </tr>

        <c:forEach var="temp" items="${customers}">
            <tr>
                <td>${temp.firstName}</td>
                <td>${temp.lastName}</td>
                <td>${temp.email}</td>
                <td>
                    <a
                            href="${pageContext.request.contextPath}/spring/customer/showEditForm?customer_id=${temp.id}">Edit
                    </a> |
                    <a
                            href="${pageContext.request.contextPath}/spring/customer/deleteCustomer?customer_id=${temp.id}"
                            onclick="return confirm('Are you sure you want to delete this item?');">Delete
                    </a>

                </td>
            </tr>
        </c:forEach>

    </table>
    <br><a class="button"
           href="${pageContext.request.contextPath}/spring/customer/showAddForm">Add
    Customer</a>
</div>
</body>
</html>
