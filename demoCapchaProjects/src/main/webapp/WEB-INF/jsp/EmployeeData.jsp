<!DOCTYPE html> <html xmlns:th="https://www.thymeleaf.org/">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix=''%>--%>

<head> <title>Insert title here</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h3>EMPLOYEE LIST PAGE</h3>
        </div>
        <div class="card-body" modelAttribute="listUser">
            <table class="table" >
                <thead>
                <tr>
<%--                    <th>ID</th>--%>
                    <th>NAME</th>
                    <th>SALARY</th>
                    <th>ADDRESS</th>
                    <th>ACTION</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="Captcha" items="${listUser}" >

                <tr >
<%--                    <td> ${Captcha.id}</td>--%>
                    <td >${Captcha.name}</td>
                    <td >${Captcha.salary}</td>
                    <td> ${Captcha.address}</td>
                    <td> <a href="/view/${Contact.id}" class="btn btn-primary">Update</a>
                        <a href="/delete/${Contact.id}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <br/>

    <a th:href="@{/employee/register}" class="btn btn-info">ADD</a>
</div>
</body>
</html>