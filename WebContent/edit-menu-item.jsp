<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Edit Menu Item</title>
<link rel="icon" href="images\truyum-logo-dark.png" width=40 height=40 />
<script type="text/javascript" src="js/script.js">
    
</script>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <c:set var="menuItem" value="${menuItem}">
    </c:set>
    <header> &nbsp;&nbsp;truYum&nbsp;&nbsp;<img src="images\truyum-logo-light.png" width=40
        height=40 /> <nav> <a class="menu" href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <h1>Edit Menu Item</h1>
    <form name="menuItemForm" onsubmit="return validateMenuItemForm()" action="EditMenuItem"
        method="post">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table>
            <tr>
                <td><label for="name"><b>Name</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="name" size="87" placeholder="Sandwich"
                    value="${menuItem.getName()}" /></td>
            </tr>
        </table>
        <table id="edit-menu-table">
            <!-- <td></td>
<td></td> -->
            <tr>
                <td><label for="price"><b>Price(Rs.)</b></label></td>
                <td><label for="inStock"><b>Active</b></label></td>
                <td><label for="dateOfLaunch"><b>Date of Launch</b></label></td>
                <td><label for="category"><b>Category</b></label></td>
            </tr>
            <tr>
                <td><input name="price" type="text" placeholder="97"
                    value="${menuItem.getPrice()}" /></td>
                <c:choose>
                    <c:when test="${menuItem.isActive()==true }">
                        <td><input type="radio" name="active" value="Yes" id="Active" checked>Yes
                            <input type="radio" name="active" value="No">No</td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="radio" name="active" value="Yes" id="Active">Yes
                            <input type="radio" name="active" value="No" checked>No</td>
                    </c:otherwise>
                </c:choose>
                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                        var="dateOfLaunch" /><input name="dateOfLaunch" type="text"
                    value="${dateOfLaunch}" placeholder="27/04/2022"></td>
                <td><select id="category" name="category" value="${menuItem.getCategory()}"
                    placeholder="Main Course">
                        <option value="Main course">Main Course</option>
                        <option value="Starters">Starters</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>
            <!-- <tr></tr> -->
            <tr>
                <c:choose>
                    <c:when test="${menuItem.isFreeDelivery()==true}">
                        <td><input type="checkbox" name="freeDelivery" value="Yes"
                            checked="checked"><b>Free Delivery</b><br></td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="checkbox" name="freeDelivery" value="no">Free
                            Delivery</td>
                    </c:otherwise>
                </c:choose>
                <label for="del" />
                <!-- <br /> -->
            </tr>
            <!-- <tr></tr> -->
            <tr>
                <td><a><input type="submit" value="Save" id="save" /></a></td>
            </tr>
        </table>
    </form>
    <footer>Copyright &copy; 2019 </footer>
</body>
</html>