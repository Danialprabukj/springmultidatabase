<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product and Customer List</title>
</head>
<body>
   <a href="http://localhost:8080/customers/list">customers list</a>
   <a href="http://localhost:8080/products/list">products list</a>
</body>
</html> -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product and Customer List</title>
    

    <style>
        body {
            background-color: #f8f9fa;
        }

        .center-content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .custom-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            color: #fff;
            background-color: #17a2b8;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .custom-button:hover {
            background-color: #138496;
        }
    </style>
</head>
<body>
    <div class="center-content">
        <div class="container bg-light p-5">
            <a href="http://localhost:8080/customers/list" class="custom-button">Customers List</a>
            <a href="http://localhost:8080/products/list" class="custom-button">Products List</a>
        </div>
    </div>

</body>
</html>

