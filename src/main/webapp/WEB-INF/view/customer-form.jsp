<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Customer Form</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Customer Form</h2>
        <form:form action="/customers/save" method="POST" modelAttribute="customer">
            <table class="table">
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="firstName" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><form:input path="lastName" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><form:input path="email" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <c:if test="${empty customer.id}">
                            <input type="submit" value="Create" class="btn btn-primary" />
                        </c:if>
                        <c:if test="${not empty customer.id}">
                            <input type="submit" value="Update" class="btn btn-primary" />
                            <input type="hidden" name="id" value="${customer.id}" />
                        </c:if>
                        <a href="/customers/list" class="btn btn-secondary">Cancel</a>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html> -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Customer Form</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-pzjw8f+ua6m9V+X1h5N5cUpdGN4jr7hd7V2ofw2N9P73t4c2y1zT/N7iBwE93bB6"
          crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2 class="text-center">Customer Form</h2>
        <form:form action="/customers/save" method="POST" modelAttribute="customer">
            <table class="table">
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="firstName" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><form:input path="lastName" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><form:input path="email" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <c:if test="${empty customer.id}">
                            <input type="submit" value="Create" class="btn btn-primary" />
                        </c:if>
                        <c:if test="${not empty customer.id}">
                            <input type="submit" value="Update" class="btn btn-primary" />
                            <input type="hidden" name="id" value="${customer.id}" />
                        </c:if>
                        <a href="/customers/list" class="btn btn-secondary">Cancel</a>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

    <!-- Add Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-pzjw8f+ua6m9V+X1h5N5cUpdGN4jr7hd7V2ofw2N9P73t4c2y1zT/N7iBwE93bB6"
            crossorigin="anonymous"></script>
</body>
</html>
