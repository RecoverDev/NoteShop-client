<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Models.Manufacturer"%>
<div>
		<table class="tableStyle">
			<tr>
				<td>Производитель</td>
				<td>
					<select id="manufacturer">
						<c:forEach items="${manufacturers}" var="item">
							<option value="${item.getId()}">${item.getName()}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>	
				<td>Модель</td><td><input type="text" id="model"/></td>
			</tr>	
			<tr>
				<td>Диагональ экрана</td><td><input type="text" id="screen"/></td>
			</tr>
			<tr>	
				<td>Процессор</td><td><input type="text" id="cpu"/></td>
			</tr>
			<tr>	
				<td>Объем оперативной памяти</td><td><input type="text" id="ram"/></td>
			</tr>
			<tr>	
				<td>Объем SSD</td><td><input type="text" id="ssd"/></td>
			</tr>
			<tr>	
				<td>Объем HDD</td><td><input type="text" id="hdd"/></td>
			</tr>
			<tr>	
				<td>Видеокарта</td><td><input type="text" id="cart"/></td>
			</tr>
			<tr>	
				<td>LAN</td><td><input type="text" id="lan"/></td>
			</tr>
			<tr>	
				<td>CDROM</td><td><input type="checkbox" id="cdrom"/></td>
			</tr>
			<tr>	
				<td>Bluetooth</td><td><input type="checkbox" id="bt"/></td>
			</tr>
			<tr>	
				<td>WiFi</td><td><input type="text" id="wifi"/></td>
			</tr>
			<tr>	
				<td>Аккумулятор</td><td><input type="text" id="power"/></td>
			</tr>
			<tr>	
				<td>Имя файла с изображением</td><td><input type="text" id="image"/></td>
			</tr>
			<tr>	
				<td>Стоимость</td><td><input type="number" id="price"/></td>
			</tr>
			<tr>	
				<td></td><td style="text-align:center; font-size: 20px"><input type="button" value="Сохранить" onclick="saveGood()"/></td>
			</tr>
		</table>
		<p id="error" style="font-size:20px;color:red"></p>
</div>    
