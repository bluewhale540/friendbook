
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <h1>Friend List</h1>
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <thead class="thead-dark">
        <th scope="row">ID</th>
        <th scope="row">First Name</th>
        <th scope="row">Last Name</th>
        <th scope="row">Major</th>
        <th scope="row">Year</th>
        <th scope="row"></th>
        <th scope="row"></th>
        </thead>
        <tbody>
        <c:forEach items="${friendList}" var="friend" >
            <tr>
                <td>${friend.id}</td>
                <td>${friend.firstname}</td>
                <td>${friend.lastname}</td>
                <td>${friend.major}</td>
                <td>${friend.year}</td>
                <td>
                    <spring:url value="/friend/editFriend/${friend.id}" var="editURL" />
                    <a class="btn btn-info" href="${editURL}" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="/friend/deleteFriend/${friend.id}" var="deleteURL" />
                    <a class="btn btn-danger" href="${deleteURL}" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/friend/addFriend/" var="addURL" />
    <a class="btn btn-success" href="${addURL}" role="button" >Add New Friend</a>
</div>
</body>
</html>