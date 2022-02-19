<%@ page isErrorPage="true" %>  
<html>
    <head>
        <title>Simple Calculator: Error</title>
    
    </head>
    <body style="background-color: lightgray; color: black;
        text-align: center; padding-top: 10rem;
        font-family: monospace; font-size: 2rem;">
        An error occured:
        <br>
       <div style="padding: 4rem; color: red;"> Error: <%= exception %> </div>
        <br> <div style="margin-top:4rem;">
        <a href="./index.html" target="_self" style="text-decoration: none; color: darkgreen; font-size: 3rem;">&#8635 Try again</a> </div>
    </body>
</html>