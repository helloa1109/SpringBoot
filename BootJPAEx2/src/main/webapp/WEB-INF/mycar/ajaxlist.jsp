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
        div.menu{
            margin-left: 30px;
            margin-top: 30px;
        }

        div.menu b{
            cursor: pointer;
        }

        div.carlist{
            margin-left: 30px;
            margin-top: 30px;
            width: 700px;
        }

        div.carlist .car{
            float:left;
            width: 150px;
            height: 220px;
            border: 3px solid pink;
            border-radius:30px;
            margin-right: 10px;
            margin-bottom: 10px;
            text-align: center;
        }

        div.carlist .car img{
            border-radius:30px;
            width: 100%;
            height: 140px;
        }
    </style>
    <script type="text/javascript">
            $(function(){
            list(1);
            $("b.list:eq(0)").css("color","red");

            $("b.list").click(function(){
            let idx=$(this).attr("idx");
            list(idx);
            $("b.list").css("color","black");
            $("b.list").eq(idx-1).css("color","red");

        });

        });

            function list(idx)
            {
                $.ajax({
                    type:"get",
                    data:{"idx":idx},
                    dataType:"json",
                    url:"list",
                    success:function(res){
                        let s="";
                        $.each(res,function(idx,ele){
                            s+=
                                `
					<div class='car'>
						<img src="../save/\${ele.carphoto}"><br><br>
						\${ele.carname}<br>
						\${ele.carprice}원
					</div>
					`;

                            if((idx+1)%3==0){
                                s+=`<br style="clear:both">`;
                            }
                        });

                        $("div.carlist").html(s);

                    }
                });
            }
    </script>
</head>
<body>
<div class="menu">
    <b class="list" idx="1">고가차량순서</b>
    &nbsp;&nbsp;
    <b class="list" idx="2">저가차량순서</b>
    &nbsp;&nbsp;
    <b class="list" idx="3">등록순서</b>
    &nbsp;&nbsp;
</div>
<div class="carlist">

</div>
</body>
</html>
