<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	document.onload = pageMenu("goods");
	function pageMenu(type){
		$.ajax({
			type: "POST",
			url: "Admin",
			data: "action=" + type,
			success: function(answer){
				$("#PageMenu").html(answer);
			}
		});
	}
	function deleteFromCatalog(id){
		$.ajax({
			type: "POST",
			url: "Admin",
			data: "action=deleteGood&id=" + id,
			success: function(answer){
				$("#PageMenu").html(answer);
			}
		});
	}
	function addGood(){
		$.ajax({
			type: "POST",
			url: "Admin",
			data: "action=addGood",
			success: function(answer){
				$("#PageMenu").html(answer);
			}
		});
		
	}
	function saveGood(){
		//проверим заполнение полей
		var valid = "";
		if($("#model").val() == ""){
			valid += "Не определено название модели. ";
		}
		if($("#screen").val() == ""){
			valid += "Не определен размер экрана. ";
		}
		if($("#cpu").val() == ""){
			valid += "Не определены характеристики процессора. ";
		}
		if($("#ram").val() == ""){
			valid += "Не определен объем оперативной памяти. ";
		}
		if($("#ssd").val() == ""){
			valid += "Не определен объем SSD. ";
		}
		if($("#hdd").val() == ""){
			valid += "Не определен объем HDD. ";
		}
		if($("#lan").val() == ""){
			valid += "Не определены характеристики LAN. ";
		}
		if($("#cart").val() == ""){
			valid += "Не определены характеристики видеокарты. ";
		}
		if($("#wifi").val() == ""){
			valid += "Не определены характеристики WiFi. ";
		}
		if($("#power").val() == ""){
			valid += "Не определены характеристики аккумулятора. ";
		}
		if($("#price").val() == ""){
			valid += "Не определена стоимость товара. ";
		}
		if($("#image").val() == ""){
			valid += "Не определено имя файла с изображением. ";
		}
		if(valid != ""){
			$("#error").empty();
			$("#error").append(valid);
			return;
		}
		var param = "action=saveGood&manufacturer="+$("#manufacturer option:selected").val() +
					"&model=" + $("#model").val() +
					"&screen=" + $("#screen").val() +
					"&cpu=" + $("#cpu").val() +
					"&ram=" + $("#ram").val() +
					"&ssd=" + $("#ssd").val() +
					"&hdd=" + $("#hdd").val() +
					"&lan=" + $("#lan").val() +
					"&cart=" + $("#cart").val() +
					"&cdrom=" + $("#cdrom").val() +
					"&bt=" + $("#bt").val() +
					"&wifi=" + $("#wifi").val() +
					"&power=" + $("#power").val() +
					"&image=" + $("#image").val() +
					"&price=" + $("#price").val();
		$.ajax({
			type: "POST",
			url: "Admin",
			data: param,
			success: function(answer){
				$("#PageMenu").html(answer);
			}
		});
		
	}
	function deleteUser(id){
		$.ajax({
			type: "POST",
			url: "Admin",
			data: "action=deleteUser&id=" + id,
			success: function(answer){
				$("#PageMenu").html(answer);
			}
		});
		
	}
</script>  
<div>
<menu class="myMenu">
	<a class="Item" href="#" onclick="pageMenu('goods')">Товары</a>
	<a class="Item" href="#"  onclick="pageMenu('users')">Пользователи</a>
	<a class="Item" href="#"  onclick="pageMenu('custom')">Заказы</a>
</menu>
<div id="PageMenu">
</div>
</div>