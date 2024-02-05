<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
document.onload = pageCabinet("customs");
function pageCabinet(type){
	$.ajax({
		type: "POST",
		url: "Users",
		data: "action=" + type,
		success: function(answer){
			$("#PageCabinet").html(answer);
		}
	});
}

</script>
<div>
<menu class="myMenu">
	<a class="Item" href="#" onclick="pageCabinet('private')">Личные данные</a>
	<a class="Item" href="#"  onclick="pageCabinet('customs')">Мои заказы</a>
	<a class="Item" href="#"  onclick="exit()">Выход</a>
</menu>
<div id="PageCabinet">
</div>
</div>