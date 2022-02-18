<%@ page errorPage="error_page.jsp" %> 
<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Simple Calculator</title>
</head>

<body style="background-color: darkseagreen;
text-align: center; padding-top: 10rem;
font-family: monospace; font-size: 3rem;">

<div class=arithmetics>
    <% boolean invNumberFlag = false;
        int x = 111111111;
        int y = 111111111;
        String regex = "[0-9]+";
        %>
       <% if (Pattern.matches(regex,request.getParameter("p1"))) {
        x = Integer.parseInt(request.getParameter("p1"));}
        else {invNumberFlag = true;
        out.println("First operand is not a number, try again.");}

        if (Pattern.matches(regex,request.getParameter("p2"))) {
        y = Integer.parseInt(request.getParameter("p2")); }
        else {invNumberFlag = true;
            out.println("Second operand is not a number, try again.");}

        int res = 0;

        boolean divZeroFlag = false;
        boolean invOperatorFlag = false;
        String operator = "null";
        String op_code = request.getParameter("op");

        if ("add".equals(op_code)) {
            operator = "+";
            res = x + y;
        } else if ("sub".equals(op_code)) {
            operator = "-";
            res = x - y;
        } else if ("mul".equals(op_code)) {
            operator = "*";
            res = x * y;
        } else if ("div".equals(op_code)) {
            operator = "/";
            if (y == 0) {
                out.println("Division by zero! ");
                divZeroFlag = true;
            } else {
                res = x / y;
            }
        }

    %>
    <% if ("null".equals(operator)) {
        out.println("Invalid operator request, please try again.");
        invOperatorFlag = true;
    }
    %>

    <% if (!invOperatorFlag && !divZeroFlag && !invNumberFlag) { %>

    <p><% out.println("First operand : " + x); %></p>
    <p><% out.println("Second operand : " + y); %></p>
    <p><% out.println(x + " " + operator + " " + y + " = " + res);
    }%></p>
</div>
<div>
    <a href="./index.html" target="_self" style="text-decoration: none;">Try again</a>
</div>
</body>
</html>
