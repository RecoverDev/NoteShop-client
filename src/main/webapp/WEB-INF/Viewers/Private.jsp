<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function validForm(){
		var param = "name=" + $("#name").val() + 
					"&email=" + $("#email").val() +
					"&phone=" + $("#phone").val() +  
					"&login=" + $("#login").val() +
					"&pass1=" + $("#pass1").val() +
					"&pass2=" + $("#pass2").val();
		$.ajax({
			type: "POST",
			url: "Users",
			data: "action=validUser&" + param,
			success: function(answer){
				if(answer == ""){
					$.ajax({
						type: "POST",
						url: "Users",
						data: "action=saveUser&" + param
					});
					document.location = "/NoteShop/NoteShop";
				}else{
					$("#message").empty();
					$("#message").append(answer);
				}
			}
		});
		
	}
</script>
<div>
<p class="titlePart">Мои данные</p>
	<form>
	<table class="tableStyle">
	<tr>
		<td>Имя</td>
		<td><input type="text" id="name" value="${user.getName()}"></td>
	</tr>
	<tr>
		<td>E-mail</td>
		<td><input type="text" id="email" value="${user.getEmail()}"></td>
	</tr>
	<tr>
		<td>Телефон</td>
		<td><input type="text" id="phone" value="${user.getPhone()}"></td>
	</tr>
	<tr>
		<td>Логин</td>
		<td><input type="text" id="login" value="${user.getLogin()}"></td>
	</tr>
	<tr>
		<td>Пароль</td>
		<td><input type="password" id="pass1" value=""/></td>
	</tr>
	<tr>
		<td>Повторить пароль</td>
		<td><input type="password" id="pass2" value=""/></td>
	</tr>
	</table>
	<p class="warning" id="message">${mess}</p>
	<p style="text-align: center"><input type="button" value="Сохранить" onclick="validForm()"/></p>
	
	</form>
</div>