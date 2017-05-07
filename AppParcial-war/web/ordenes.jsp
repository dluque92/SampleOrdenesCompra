<%-- 
    Document   : ordenes
    Created on : 07-may-2017, 13:12:04
    Author     : david
--%>

<%@page import="entity.PurchaseOrder"%>
<%@page import="java.util.List"%>
<% 
    List<PurchaseOrder> listaOrdenes = (List) request.getAttribute("listaOrdenes");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>order_num</th>
                <th>quantity</th>
                <th>shipping_cost</th>
                <th>name</th>
            </tr>
            <% for(PurchaseOrder orden : listaOrdenes){ %>
            <tr>
                <td><a href="ServletBorrar?id=<%=orden.getOrderNum() %>"><%=orden.getOrderNum() %></a></td>
                <td><%=orden.getQuantity() %></td>
                <td><%=orden.getShippingCost() %></td>
                <td><%=orden.getCustomerId().getName() %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
