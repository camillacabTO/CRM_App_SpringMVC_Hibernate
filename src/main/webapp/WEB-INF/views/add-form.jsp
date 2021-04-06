<%--
  Created by IntelliJ IDEA.
  User: camilabarros
  Date: 2021-04-02
  Time: 8:11 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <title>Save Customer</title>

    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>

<body>

<div id="container">
    <h2>CRM - Customer Relationship Manager</h2>
    <h3>Add a New Customer</h3>

    <form:form action="addCustomer" modelAttribute="customer" method="POST">
        <%--        modelAttribute binds to the Customer obj in the controller--%>
        <form:hidden path="id"/>
        <%--        form:hidden, used for update--%>
        <label>First name:
            <form:input path="firstName"/>
        </label>

        <label>Last name:
            <form:input path="lastName"/>
        </label>

        <label>Email:
            <form:input path="email"/>
        </label>

        <input type="submit" value="Add" class="button"/>

    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/spring/customer/list"
           class="button">Go
            Back</a>
    </p>

</div>

</body>

</html>










