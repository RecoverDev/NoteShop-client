<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Models.Good"%>
<div>
<p class="titlePart">Каталог товаров</p>
<a class="OrangeButton" href="#" onclick="addGood()">Добавить товар</a>
<table class="tableStyle">
	<tr style="text-align:center">
		<th class="rightCell"></th>
		<th class="cell">Ноутбук</th>
		<th class="cell">Цена</th>
		<th class="rightCell"></th>
	</tr>
<c:forEach items="${goods}" var="good">
		<tr>
			<td class="rightCell"><img src="img/${good.getImage()}" width="100" alt="${good.getModel()}" /></td>
			<td class="cell">${good.getManufacturer()} ${good.getModel()}</td>
			<td class="cell">${good.getPrice()}</td>
			<td class="rightCell"><a onclick="deleteFromCatalog('${good.getId()}')">Удалить товар</a></td> 
		</tr>
</c:forEach>
</table>
</div>