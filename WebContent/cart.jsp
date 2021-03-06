
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
	<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header>
	<span>truYum</span> <img src="./images/truyum-logo-light.png"/ >
	<a id="cart" href="ShowCart">Cart</a> <a id="menu"
		href="ShowMenuItemListCustomer">Menu</a> </header>

	<div class="cont">
		<h2>Cart</h2>
		<table class="table">
			<h2>
				<p id="par">${msg}</p>
			</h2>
			<tr>
				<th class="names">Name</th>
				<th class="cent">Free Delivery</th>
				<th class="price">Price</th>
				<th class="cent">Action</th>
			</tr>
			<c:forEach items="${menuItemListCustomer}" var="menu">
				<tr>
					<td class="names">${menu.name}</td>
					<td class="cent"><c:if test="${menu.freeDelivery}">Yes</c:if>
						<c:if test="${!menu.freeDelivery}">No</c:if></td>
					<td class="price">${menu.price}</td>
					<td class="cent"><a href="RemoveCart?menuItemId=${menu.id}">Delete</a></td>

				</tr>
			</c:forEach>
			<tr>
				<th></th>
				<th class="cent">Total</th>
				<th class="price">${total}</th>
				<th></th>
		</table>

	</div>

	<footer>
	<h3>Copyright@2019</h3>
	</footer>
</body>
</html>
