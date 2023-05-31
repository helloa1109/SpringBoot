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

        div.info img{
            width: 140px;
            height: 100px;
        }

        div.info{
            font-size: 3px;
            width: 100px;
            height: 160px;
            border: 5px groove black;
        }
    </style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
<div class="info">
    <img src="${root}/photo/hype.jpg"><br>
    <img src="${root}/photo/img.jpg"><br>
    <img src="${root}/photo/kakao.jpg"><br>
    <i class="bi bi-telephone-plus-fill" style="font-size: 15px;text-align: center;">&nbsp;02-666-4444</i><br><br>
</div>
</body>
</html>
