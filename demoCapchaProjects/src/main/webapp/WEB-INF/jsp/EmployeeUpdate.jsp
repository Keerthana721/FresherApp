<%--
  Created by IntelliJ IDEA.
  User: m865
  Date: 10/13/2022
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
    <meta charset="ISO-8859-1">
    <title>Employee Management System</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>
<div class="container">

    <h2>Update User</h2>
    <form:form  var="user"  action="/update/${user.id}">

    <input type="hidden" name= "id" value="${user.id}/>

        <input type="text" value="${user.firstname}" class="form-control mb-4 col-4">


    <input type="text" value="${user.name}"  name="name" class="form-control mb-4 col-4">

    <input type="text" value="${user.salary}"  name="salary" class="form-control mb-4 col-4">

    <input type="email" value="${user.address}" name="address" class="form-control mb-4 col-4">




    <button type="submit" class="btn btn-info col-2"> Update User</button>
    </form:form>

    <hr>
