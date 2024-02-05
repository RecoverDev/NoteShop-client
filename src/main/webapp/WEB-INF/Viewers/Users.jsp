<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Models.Custom"%>
<div>
<p class="titlePart">Пользователи</p>
	<table class="tableStyle">
		<tr style="text-align:center">
			<th class="cell">Имя пользователя</th>
			<th class="cell">E-mail</th>
			<th class="cell">Телефон</th>
			<th class="cell">Логин</th>
			<th class="cell">Роль</th>
			<th class="rightCell"></th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td class="cell">${user.getName()}</td>
				<td class="cell">${user.getEmail()}</td>
				<td class="cell">${user.getPhone()}</td>
				<td class="cell">${user.getLogin()}</td>
				<td class="cell">
					<c:if test="${user.isAdmin()}">
						Администратор
					</c:if>
					<c:if test="${!user.isAdmin()}">
						Клиент
					</c:if>
				</td>
				<td class="rightCell">
					<a href="#" onclick="deleteUser('${user.getId()}')">Удалить пользователя</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>    