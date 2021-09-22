<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">


footer{
   width: 100%;
   height: 200px;
   margin: 0;
   background-color: #6E6E6E;
   font-family: 'Noto Sans KR', sans-serif;
   color: #EFF8FB;
}

body{
   display: block;
   box-sizing: border-box;
   margin: 0;
}

#level-01{
   padding-top: 28px;
   color: #BDBDBD;
}

#level-02{
   display: flex;
   justify-content: center;
   font-size: 13px;
   color:#BDBDBD;
   margin: 0;
}

#logo{
   display: flex;
   justify-content: center;
   font-family: 'Secular One', sans-serif;
   color: #424242;
}

</style>
<title>Insert title here</title>
    <!-- 구글폰트 링크넣기-->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" 
rel="stylesheet">
</head>
<body>

   <footer>
   <div id="footer">
      <div id="level-01">
         <div id="logo"><h2><b>IT JOBS.</b></h2></div>
      </div>
      <div id="level-02">
         <div id="description"><p>(주)블루베리즈 (대표이사 : 윤사라) | 서울특별시 강남구 KH정보원 | 사업자번호 : 000-00-12345</p></div>
      </div>
   </div>   
   </footer>

</body>
</html>