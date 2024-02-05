<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.noteshop.client.Models.Notebook"%>	
	<div style="align-content:center">
<p style="text-align:center;font-size:30px;color:orange">Карточка товара</p>
<table>
	<tr>
		<td>
	        <img src="img/${good.getImg()}" width="200" alt="${good.getModel()}" />
		</td>
		<td>
			<table class="Card">
				<tr>
					<td style="font-size:25px">${good.getId_manufacturer()} ${good.getModel()}</td>
                    <td style="text-align: right">
						<%
						session = request.getSession();
						if(session.getAttribute("User") != null){ %>
						<a class="OrangeButton" onclick="inBasket('${good.getId()}')">В корзину</a>
						<%}
						%>
                    </td>
				</tr>
				<tr>
					<td>Размер экрана: ${good.getScreen()}</td>
					<td></td>
				</tr>
				<tr>
					<td>Размер памяти: ${good.getRAM()} ГБ</td>
					<td></td>
				</tr>
				<tr>
					<td>Процессор: ${good.getCPU()}</td>
					<td></td>
				</tr>
				<tr>
					<td>Видеосистема: ${good.getCard()}</td>
					<td></td>
				</tr>
				<tr>
					<td>SSD: ${good.getSSD()}</td>
					<td></td>
				</tr>
				<tr>
					<td>HDD: 
						<c:if test="${good.getHDD() > 0}">
							${good.getHDD()}
						</c:if>
						<c:if test="${good.getHDD() == 0}">
							отсутствует
						</c:if>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>CD привод: 
						<c:if test="${good.isCDROM()}">
							присутвует
						</c:if>
						<c:if test="${good.isCDROM() == false}">
							отсутвует
						</c:if>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>LAN: ${good.getLAN()}</td>
					<td></td>
				</tr>
				<tr>
					<td>WiFi: ${good.getWIFI()}</td>
					<td></td>
				</tr>
				<tr>
					<td>Bluetooth: 
						<c:if test="${good.isBT()}">
							присутвует
						</c:if>
						<c:if test="${good.isBT() == false}">
							отсутвует
						</c:if>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>Аккумулятор: ${good.getPower()}</td>
					<td style="font-size:25px;text-align: right">Цена: ${good.getPrice()}</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>