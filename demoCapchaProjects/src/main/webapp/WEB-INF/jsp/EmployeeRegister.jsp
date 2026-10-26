<%--
  Created by IntelliJ IDEA.
  User: m865
  Date: 10/13/2022
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>Insert title here</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    </head>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h3>EMPLOYEE REGISTER PAGE</h3>
        </div>
        <div class="card-body">
            <form action="/save" method="POST" th:object="${employee}">
<%--                <div class="row">--%>
<%--                    <div class="col-2">--%>
<%--                        <label>ID</label>--%>
<%--                    </div>--%>
<%--                    <div class="col-2">--%>
<%--                        <input type="text" name="id" class="form-control" />--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="row">
                    <div class="col-2">
                        <label>NAME</label>
                    </div>
                    <div class="col-8">
                        <input type="text" name="name" class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                        <label>SALARY</label>
                    </div>
                    <div class="col-8">
                        <input type="text" name="salary" class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">

                        <label>ADDRESS</label>
                    </div>
                    <div class="col-8">
                        <input type="text" name="address" class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                        <label>VERIFY</label>
                    </div>
                    <div class="col-4">
                        <div class="g-recaptcha"
                             data-sitekey="6LdU0XkiAAAAAG2R5U5iGwgP8hY4jzpFMyPN3df5">
                        </div>
                    </div>
                </div>
                <input type="submit" value="Add Employee" class="btn btn-success" />
                | <a href="/all" class="btn btn-info">VIEW ALL</a>
            </form>
            <br/>
<%--            <div th:if="${message!=null}">--%>
<%--                <span class="alert alert-danger" th:text="${message}"></span>--%>
<%--            </div>--%>
        </div>
    </div>
</div>
</body>
</html>
