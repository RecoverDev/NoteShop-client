<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Интернет-магазин NoteShop</title>
<link rel="stylesheet" href="Styles.css"/>
</head>
<body>
<a href="/NoteShop/NoteShop">На главную</a>
	<div style="justify-content:center;border:2px solid orange;border-radius:10px 10px; margin:100px 100px 100px 100px">
		<form action="Registration" method="post">
			<table class="tableStyle">
				<tr>
					<td>Имя </td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>E-mail </td>
					<td><input type="text" name="email"/></td>
				</tr>
				<tr>
					<td>Телефон (в виде +7(888)888-88-88)</td>
					<td><input type="text" name="phone"/></td>
				</tr>
				<tr>
					<td>Логин </td>
					<td><input type="text" name="log"/></td>
				</tr>
				<tr>
					<td>Пароль </td>
					<td><input type="text" name="pass1"/></td>
				</tr>
				<tr>
					<td>Повторить пароль </td>
					<td><input type="text" name="pass2"/></td>
				</tr>
			</table>
			<p class="warning">${mess}</p>
			<p style="text-align: center"><input type="submit" value="Войти"/></p>
		</form>
	</div>

</body>
</html>