<%@page import="com.bb.dto.CorporationDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#kakao_main{

	padding-top: 150px;
    position:absolute;
 	left: 50%;
 	margin-left: -300px;

}

#kakao_table {
	margin-top: 15%;
    width: 300px%;
    border-top: 2px solid #444444;
    border-bottom: 2px solid #444444;
    border-collapse: collapse;
    border-color: white;

  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  
  th{
  	background: black;
  }
  
  tr{
    background: white;
  }
  
  tr:hover{
  	background: #E6E6E6;
  }
  
  .pay_button{
  	margin-top: 40px;
	margin-bottom:40px;
	
	width: 300px;
    height: 50px;
    background: #819FF7;
    font-family: 'Noto Sans KR', sans-serif;
    letter-spacing: 5px;
    
    box-shadow:inset 0px 1px 0px 0px #d7dafa;
	background:linear-gradient(to bottom, #a1b9ff 5%, #819FF7 100%);
	background-color:#85bdf5;
	border-radius:6px;
	border:1px solid #398cde;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #0818ff;
	position:relative;
	left: 50%;
	margin-left: -150px;
  }
  
  .pay_button{
  	margin-top: 10%;
  }


#product_img{

	width:100%;
	height:500px;
	background-color:#D8D8D8;
	background-image: url('resources/images/corp_img04.jpg'); background-repeat: no-repeat;
	background-position: center;
}

h1{
	color: white;
}

#second-td{
	font-size: 13px;
}




</style>


<script type="text/javascript">
	console.log("${login.member_id}");
	
	function checkMembership(){
		var membership = document.getElementsByName("membership")[0];
		var kakao = document.getElementsByName("kakao")[0];
		if(membership.value == 'false'){
			alert("?????? ????????? ???????????????!");
		}else{
			kakao.submit();
		}
		
	}
	
</script>

<% String membership = (String)request.getParameter("membership"); %>
</head>
<%@ include file="./form/nav_corp.jsp" %>

	<div id="product_img">

	<!-- ???????????? / ?????? / ??????????????? / -->

	<form method="post" action="kakao.do" name="kakao">
	<input type="hidden" name="command" value="kakaopay"/>
	<input type="hidden" name="member_id" value="${login.member_id }"/>
	<input type="hidden" name="cost" value="100"/>
	<input type="hidden" name="product" value="??????????????????"/>
	<input type="hidden" name="membership" value="<%=membership%>"/>
	<div id="kakao_main">

		<table id="kakao_table">
			<col width="150px">
			<col width="300px">
			<col width="150px">
			<tr>
				<td>?????? ????????? ??????</td>
				<td id="second-td">????????? ??? ?????? ?????? ?????? ??? ?????? ????????? ???????????? <br/>??????????????? ????????? ????????????!</td>
				<td align=right>100???</td>
			</tr>
		</table>
	</div>
	<div id="pay_button_div">
		<input class="pay_button" type="button" value="????????????" onclick="checkMembership();"/>
	</div>
	</form>	
	</div>
	
	<footer id="footer">
	
	</footer>
</body>
</html>


