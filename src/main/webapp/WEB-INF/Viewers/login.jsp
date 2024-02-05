<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Интернет-магазин NoteShop</title>
<link rel="stylesheet" href="Styles.css"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>
<body>
<a href="/NoteShop/NoteShop">На главную</a>
	<div style="justify-content:center;border:2px solid orange;border-radius:10px 10px; margin:100px 100px 100px 100px">
		<form action="Login" method="post">
			<table style="width: 100%; padding: 10px 10px 10px 10px">
				<tr>
					<td>Имя пользователя</td>
					<td><input type="text" name="log"/></td>
				</tr>
				<tr>
					<td>Пароль</td>
					<td><input type="password" name="pass"/></td>
				</tr>
			</table>
			<p style="text-align: center; color:red">${mess}</p>
			<p style="text-align: center"><input type="submit" value="Войти"/></p>
			<p style="text-align: center"><a href="/NoteShop/Registration">Регистрация</a></p>
		</form>
	</div>
</body>
</html>