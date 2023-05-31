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
        .main
        {
            display: flex;
            justify-content: center;
            border: 1px solid black;
            text-align: center;
            width: 1200px;
            height: 75px;
        }

        .title
        {
           display: flex;
           align-items: center;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="main2">
        <h2 class="title"><i class="bi bi-flower2" style="color: hotpink"></i>오늘의 추천 메뉴<i class="bi bi-flower2" style="color: hotpink"></i></h2>

    </div>
</div>
</body>
</html>
