<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Friend</title>
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <spring:url value="/friend/addFriend" var="addURL" />
    <h2>Add Friend</h2>
    <form:form modelAttribute="friendForm" method="post" action="${addURL}" cssClass="form" >
        <form:hidden path="id"/>
        <div class="form-group">
            <label>First Name</label>
            <form:input path="firstname" cssClass="form-control" id="firstname" />
        </div>
        <div class="form-group">
            <label>Last Name</label>
            <form:input path="lastname" cssClass="form-control" id="lastname" />
        </div>
        <div class="form-group">
            <label>Major</label>
            <form:input path="major" cssClass="form-control" id="major" />
        </div>
        <div class="form-group">
            <label>Year</label>
            <form:input path="year" cssClass="form-control" id="year" />
        </div>
        <button type="submit" class="btn btn-success">Add Friend</button>
    </form:form>

</div>
</body>
</html>