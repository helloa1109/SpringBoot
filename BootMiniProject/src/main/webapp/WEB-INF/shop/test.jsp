<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        #header {
            background-color: #2bc1bc;
            height: 75px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            width: 200px;
            height: auto;
            margin-left: 20px;
        }

        .user{
            position: absolute;
            top: 20px;
            right: 20px;
            color: white;
            cursor: pointer;
            font-size: 30px;
        }

        .arrow{
            position: absolute;
            left: 70%;
            transform: translateX(-70%);
            align-items: center;
            cursor: pointer;
            font-size: 20px;
            top: 19px;
        }

    </style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>

<div id="header">
    <header>
        <img src="../image/log.png" class="logo">
        <i class="bi bi-caret-down arrow"></i>
        <a href="login.jsp">
            <i class="bi bi-person user"></i>
        </a>
    </header>
</div>
</body>
</html>
