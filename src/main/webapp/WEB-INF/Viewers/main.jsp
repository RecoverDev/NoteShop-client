<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.noteshop.client.Models.User"%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Интернет-магазин NoteShop</title>
<link rel="stylesheet" href="Styles.css" />
<script src="jquery-3.6.0.js"></script>
<script>
	var BaseURL = "http://localhost:8080/";
	function sendcontent(command){
		$.ajax({
			type: "GET",
			url: BaseURL+command,
			data: "",
			success: function(answer){
				$("#content").html(answer);
			}
		});
		
	}
	function selectArticle(id){
		$.ajax({
			type: "GET",
			url: "/",
			data: "action=card/" + id,
			success: function(answer){
				$("#content").html(answer);
			}
		});
		
	}
	function inBasket(id){
		$.ajax({
			type: "POST",
			url: "NoteShop",
			data: "action=inBasket&id_notebook=" + id,
			success: function(answer){
				$("#count").empty();
				$("#count").append(answer);
			}
		});
	}
	function deleteFromBasket(id){
		$.ajax({
			type: "POST",
			url: "Basket",
			data: "action=delete&id_good=" + id,
			success: function(answer){
				$("#content").html(answer);
			}
		});
	}
	function Order(){
		$.ajax({
			type: "POST",
			url: "Basket",
			data: "action=order",
			success: function(answer){
				$("#content").html(answer);
				inBasket(0);
			}
		});
	}
	function exit(){
		$.ajax({
			type: "POST",
			url: "Users",
			data: "action=exit",
			success: function(answer){
				document.location = "/NoteShop/NoteShop";
			}
		});
	}
	
</script>
<script type="text/javascript">
	window.onload = sendcontent("notebooks");
</script>
</head>
<body>
	<header>
		<p class="title">
			НОУТ<span class="titleItalic">Shop</span>
		</p>
		<p class="title" style="font-size: 25px">ноубуки от всех производителей по низким ценам</p>
		<div class="divPage" style="padding:5px 5px 5px 5px">
			<div class="divLeftFlex" style="width: 58%">
				<a class="OrangeButton"  onclick="sendcontent('notebooks')">Ноутбуки</a>
				<a class="OrangeButton" onclick="sendcontent('delivery')">Доставка</a>
				<a class="OrangeButton" onclick="sendcontent('about')">О нас</a>
			</div>
			<div class="divRightFlex" style="width: 40%;text-align:right">
				<% 
				session = request.getSession();
				if(session.getAttribute("User") != null){
					User user = (User)session.getAttribute("User");
					if(user.isIsadmin()){%>
						<a class='OrangeButton' onclick="sendcontent('admin')">Админка</a>
					<%}%>
					<a class="OrangeButton" onclick="sendcontent('cabinet')">
					<%out.println(user.getName());%>
					</a>
					<a class="OrangeButton" onclick="sendcontent('basket')">Корзина (<span id="count">${count}</span>)</a>
					<%
				}else{
					out.println("<a class='OrangeButton' href='/Login'>Войти</a>");
				}
				%>
			</div>
		</div>
	</header>
	<div class="divFlex" id="content">
	</div>
 
	<footer class="divFooter">
		<ul style="padding:50px">
			<li>т. +7(222)222-22-22</li>
			<li>т. +7(333)333-33-33</li>
		</ul>
	</footer>

</body>
</html>