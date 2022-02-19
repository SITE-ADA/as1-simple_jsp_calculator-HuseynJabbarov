<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client Info</title>
</head>

<body style="background-color: darkseagreen;
text-align: center; padding-top: 10rem;
font-family: monospace; font-size: 2.5rem;">
<style>
    .calculator{
        margin: auto;
        background-color: rgb(167, 228, 167);
        border-radius: 0.5rem;
        padding: 1rem;
        width: 75%;
    }
    .input{
        padding: 0.4rem;
        width: 15%;
        height: 2rem;
        font-size: 1.5rem;
        border-radius: 0.2em;
        background-color: rgb(217, 255, 230);
    }
    .oper {
        padding: 1rem;
    }
</style>

<div class="calculator" style="display: block;">
     <div class="os">
      <%
      String userOs = System.getProperty("os.name");
      out.println("Your operating system: " + userOs);
      %>
    </div>
      <%
        String userBrowser = "";
        String browser = request.getHeader("user-agent");
        if (browser.indexOf("MSIE") != -1) {
        userBrowser = "Internet Explorer";
        }
        else if (browser.indexOf("Chrome") != -1) {
        userBrowser = "Google Chrome";
        }
        else if (browser.indexOf("Firefox") != -1) {
        userBrowser = "Mozilla Firefox";
        }
        else if (browser.indexOf("Safari") != -1) {
        userBrowser = "Safari";
        }
        else if (browser.indexOf("OPR") != -1) {
        userBrowser = "Opera";
        }
        else {
        userBrowser = "Some unpopular browser :D";
        }
        out.println("Your browser: " +userBrowser);
 %>

 </div>
</div>
    <div>
        <a href="./index.html" target="_self" style="text-decoration: none;">&#x2190 Calculator</a>
    </div>
</body>

</html>