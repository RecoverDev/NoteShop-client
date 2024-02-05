<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page import="com.noteshop.client.Models.User"%>	
<%@page import="com.noteshop.client.Models.Notebook"%>	
<div>
<c:forEach items="${goods}" var="good">
            <div class="divArcticle" >
                <table style="width:100%" >
                    <tr>
                        <td style="width:100px">
                            <!-- <img src="img/${good.getImage()}" width="100" alt="${good.getModel()}" /> -->
                        </td>
                        <td>
                            <table style="width:100%; font-size: 20px" onclick="selectArticle('${good.getId()}')">
                                <tr>
                                    <td style="font-weight:bold">${good.getManufacturer()} ${good.getModel()}</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Размер экрана: ${good.getScreen()}</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Размер памяти: ${good.getRam()} ГБ</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Процессор: ${good.getCpu()}</td>
                                    <td></td>
                                </tr>
                                
                                <tr>
                                    <td>Видеосистема: ${good.getCard()}</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>SSD: ${good.getSsd()}</td>
                                    <td style="text-align: right">Цена: ${good.getPrice()}</td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align: right">
							<%
								session = request.getSession();
								if(session.getAttribute("User") != null){%>
									<a class="OrangeButton" onclick="inBasket('${good.getId()}')">В корзину</a>
								<%}
							%>
                        </td>
                    </tr>
                </table>
            </div>

</c:forEach>
</div>
<!-- 
<div class="divLeftFlex" style="width: 20%;border:2px solid orange;border-radius:10px 10px">
	<form style="margin:5px 5px 5px 5px">
		<p class="filterText">диагональ экрана</p>
		<input type="checkbox" name="d14_0" />14.0"<br /> 
		<input type="checkbox" name="d15_6" />15.6"<br /> 
		<input type="checkbox" name="d17_2" />17.2"<br />
		<p class="filterText">объем памяти</p>
		<input type="checkbox" name="m8" />8 GB"<br />
		<input type="checkbox" name="m16" />16 GB"<br /> <br />
		<input type="submit" name="apply" value="Применить фильтр" />
	</form>
</div>
-->
	

