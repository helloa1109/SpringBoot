

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

        html, body {
            margin: 0;
            padding: 0;
        }

        .menu
        {
            display: flex;
            justify-content: center;
            text-align: center;
            padding: 0;
            margin-top: 5px;

        }

        .menu li
        {
            display: inline-block;
            text-align: center;

        }

        div.menu1{
            height: 60px;
            width: 1200px;
            margin: 0 auto;
            /*border: 1px solid black;*/
        }

        div.menu1 ul{
            list-style: none;
            width: 1200px;

        }

        div.menu1 ul li a
        {
            float: left;

            margin-right: 100px;
            text-decoration: none;
            line-height: 20px;
            height: 20px;
            cursor: pointer;
            font-size: 30px;
            color: black;
        }

        div.menu1 ul li a:hover
        {
            color: pink;
        }

    </style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
<div class="menu1">
    <ul class="menu">
        <li>
            <a href="${root}/">메인</a>
        </li>
        <li>
            <a href="${root}/minjok">메뉴</a>
        </li>
        <li>
            <a href="${root}/board/list">몰라</a>
        </li>
        <li>
            <a href="${root}/guest/list">별점</a>
        </li>
        <li>
            <a href="${root}/contact">주소</a>
        </li>
    </ul>
</div>
</body>
</html>

