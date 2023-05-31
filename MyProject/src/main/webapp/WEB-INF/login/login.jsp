<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Single+Day&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <style>
        body, body * {
            font-family: 'Jua'
        }

        .wrapper
        {
            display: flex;
            flex-direction: column;
            right: 100px;
            width: 300px;
            height: 350px;
        }

        #container
        {
            width: 300px;
            height: 350px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-right: 100px;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <div id="container">
        <form name="login" method="post" action="loginchk">
        <div class="uname">
            <input type="text" name="username" placeholder="username"><br>
        </div>
        <div class="upass">
            <input type="password" name="userpass" placeholder="userpass"><br>
        </div>
        <div class="logbutton">
            <button class="btn" type="submit">login</button>
        </div>
        </form>
    </div>
</div>
</body>
</html>
