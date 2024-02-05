<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Models.Custom"%>
<div>
<p class="titlePart">Заказы</p>
	<table class="tableStyle">
		<tr style="text-align:center">
			<th class="rightCell"></th>
			<th class="cell">Товар</th>
			<th class="cell">Клиент</th>
			<th class="cell">Цена</th>
			<th class="cell">Количество</th>
			<th class="cell">Сумма</th>
			<th class="rightCell">Статус</th>
		</tr>
		<c:forEach var="custom" items="${customs}">
			<tr>
				<td class="rightCell"><img src="img/${custom.getImage()}" width="100" alt="${custom.getModel()}" /></td>
				<td class="cell">${custom.getManufacturer()} ${custom.getModel()}</td>
				<td class="cell">${custom.getUser()}</td>
				<td class="cell">${custom.getPrice()}</td>
				<td class="cell">${custom.getCount()}</td>
				<td class="cell"><c:out value="${custom.getPrice() * custom.getCount()}"/></td>
				<td class="rightCell">
					<c:if test="${custom.getStatus() == 0 }">
						В корзине
					</c:if>
					<c:if test="${custom.getStatus() == 1 }">
						Оплачен
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>    