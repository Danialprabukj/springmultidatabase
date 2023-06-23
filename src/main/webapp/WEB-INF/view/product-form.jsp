<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Product Form</title>
</head>
<body>
    <h2>Product Form</h2>
    <form:form action="/products/save" method="POST" modelAttribute="product">
        <table>
            <tr>
                <td>Code:</td>
                <td><form:input path="code" /></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="price" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <c:if test="${empty product.id}">
                        <input type="submit" value="Create" />
                    </c:if>
                    <c:if test="${not empty product.id}">
                        <input type="submit" value="Update" />
                        <input type="hidden" name="id" value="${product.id}" />
                    </c:if>
                    <a href="/products/list">Cancel</a>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html> -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Product Form</title>
    <!-- Add Bootstrap CSS link here -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container  text-center">
        <h2 class="mt-5">Product Form</h2>
        <form:form action="/products/save" method="POST" modelAttribute="product">
            <table class="table">
                <tr>
                    <td>Code:</td>
                    <td><form:input path="code" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><form:input path="name" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><form:input path="price" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <c:if test="${empty product.id}">
                            <input type="submit" value="Create" class="btn btn-primary" />
                        </c:if>
                        <c:if test="${not empty product.id}">
                            <input type="submit" value="Update" class="btn btn-primary" />
                            <input type="hidden" name="id" value="${product.id}" />
                        </c:if>
                        <a href="/products/list" class="btn btn-secondary">Cancel</a>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
 
</body>
</html>
