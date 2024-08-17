<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<div class="container mt-5">
    <%--        boc giao dien = container , mt - margin top--%>
    <div class="row">
        <%--            row di cung container de chia layout--%>
        <div class="col-md-6 col-12 mx-auto">
            <%--                bootstrap chia layout 12 column, col-md-6 md: medium > 768px lay 6 cot, mobile 12 column--%>
            <%--                mx: truc Ox, mx-auto: tu dong can truc Ox, can trai, phai--%>
            <h3>Create a user</h3>
            <hr/>
            <form:form action="/admin/user/create" method="POST" modelAttribute="user">
                <div class="mb-3">
                    <label class="form-label">Email:</label>
                    <form:input type="email" path="email" class="form-control"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password:</label>
                    <form:input type="password" path="password" class="form-control"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Phone number:</label>
                    <form:input type="text" path="phone" class="form-control"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Full Name:</label>
                    <form:input type="text" path="fullName" class="form-control"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Address:</label>
                    <form:input type="text" path="address" class="form-control"/>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>