<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Models.Good"%>	
<%@page import="Models.BasketElement"%>	

<div>
<p class="titlePart">Корзина</p>
<c:if test="${basket.size() == 0}">
	<p style="text-align:center;font-size:30px;color:orange;margin:50px">Ваша корзина пока пуста</p>
</c:if>
<c:if test="${basket.size() > 0}">
	<table class="tableStyle">
		<tr style="text-align:center">
			<th class="rightCell"></th>
			<th class="cell">Ноутбук</th>
			<th class="cell">Цена</th>
			<th class="rightCell">Количество</th>
		</tr>
	<c:forEach var="item" items="${basket}">
		<tr>
			<td class="rightCell"><img src="img/${item.getGood().getImage()}" width="100" alt="${item.getGood().getModel()}" /></td>
			<td class="cell">${item.getGood().getManufacturer()} ${item.getGood().getModel()}</td>
			<td class="cell">${item.getGood().getPrice()}</td>
			<td class="rightCell">${item.getCount()}</td>
			<td><a onclick="deleteFromBasket('${item.getGood().getId()}')">Удалить из корзины</a></td> 
		</tr>
	</c:forEach>
	<tr>
		<td></td>
		<td style="text-align:right;font-size:20px;font-weight: bold">Общая сумма заказа:</td>
		<td style="font-size:25px;font-weight: bold">${totalSum}</td>
	</tr>
	</table>
	<p style="text-align:center"><a class="OrangeButton" onclick="Order()">Оформить заказ</a></p>
</c:if>
</div>    
