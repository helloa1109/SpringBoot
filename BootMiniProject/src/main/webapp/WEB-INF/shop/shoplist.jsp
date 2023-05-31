<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../commonvar.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Refresh" content="10;url=./list">
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
    </style>
</head>
<body>
<button type="button" class="btn btn-sm btn-outline-primary"
onclick="location.href='shopform'" style="margin-bottom: 10px">상품등록</button>
<h5 class="alert alert-primary">
    총 ${totalCount}개의 상품이 등록되어있습니다!
    <span style="float: right">
        <button type="button" class="btn btn-sm btn-outline-primary"
                onclick="location.href='list2'" style="margin-bottom: 10px">큰사진으로 확인</button>
    </span>
</h5>
<table class="table table-bordered">
    <tr style="background-color: #ddd">
        <th style="width: 50px">번호</th>
        <th style="width: 190px">상품명</th>
        <th style="width: 50px">색상</th>
        <th style="width: 70px">가격</th>
        <th style="width: 70px">상세보기</th>
    </tr>
    <c:forEach var="dto" items="${list}" varStatus="i">
        <tr>
            <td align="center">${i.count}</td>
            <td>
<%--            <img src="http://tejcvtilchkm16981863.cdn.ntruss.com/shop/${dto.photo}?type=f&w=40&h=40&faceopt=true&ttype=jpg"--%>
<%--            border="1" hspace="10">--%>
                <img src="http://${imageUrl_small}/shop/${dto.photo}?type=f&w=40&h=40&faceopt=true&ttype=jpg" border="1" hspace="10">
                <b>${dto.sangpum}</b>
            </td>
            <td style="background-color: ${dto.color};color: white">${dto.color}</td>
            <td align="right">
                <fmt:formatNumber value="${dto.price}" type="currency" currencySymbol="₩" minFractionDigits="0"/>
            </td>
            <td align="center">
                <button type="button" class="btn btn-info btn-sm"
                onclick="location.href='detail?num=${dto.num}'" style="color: white">detail</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
