<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Customer</title>
<link rel="icon" href="images\truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> &nbsp;&nbsp;truYum&nbsp;&nbsp;<img src="images\truyum-logo-light.png" width=40
        height=40 /> <nav> <a class="menu" href="ShowMenuItemListCustomer">Menu</a> <a
        id="add-cart" href="ShowCart">Cart</a> </nav> </header>
    <h1>Menu Items</h1>
    <br />
    <c:if test="${addCartStatus==true}">
        <h2 id="item-cart">Items Added into Cart Successfully</h2>
    </c:if>
    <table id="customer-table">
        <col width="300px" />
        <col width="160px" />
        <col width="180px" />
        <col width="170px" />
        <col width="200px" />
        <col width="100px" />
        <tr>
            <th align="left">Name</th>
            <th align="center">Free Delivery</th>
            <th align="right">Price</th>
            <th align="center">Category</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="Rs."
                        minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        to Cart</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>Copyright &copy; 2019 </footer>
</body>
</html>