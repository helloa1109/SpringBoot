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

        #googleMap
        {
            display: flex;
            align-items: center;
            width: 100%;
        }
    </style>


</head>
<body>
</body>
<div id="googleMap" style="width: 1000px;height: 700px;"></div>

<script>
    function myMap(){
        var mapOptions = {
            center:new google.maps.LatLng(51.508742, -0.120850),
            zoom:5
        };

        var map = new google.maps.Map(
            document.getElementById("googleMap")
            , mapOptions );
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5hUZSu7_cPSMNcXcLp18OgQWbtmje0bw&callback=myMap"></script>
</html>
