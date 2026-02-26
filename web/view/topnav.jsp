<%-- 
    Document   : topnav
    Created on : Feb 26, 2026, 9:53:01 PM
    Author     : Mai Phuong
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="topnav">
    <%
        Object acc = session.getAttribute("account");
        if (acc != null) {
    %>
        <a style="float:right;">Hello, <%= ((model.Account)acc).getUsername() %></a>
        <a href="logout" style="float:right;">Logout</a>
    <%
        }
    %>
</div>
