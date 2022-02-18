<%@ page isErrorPage="true" %>  
<html>
    <head>
        <title>Simple Calculator: Error</title>
    
    </head>
    <body>
        How did you manage to get an error? Anyway here it is.
        <br>
        Error: <%= exception %>
        <br>
        <a href="./index.html" target="_self">Try again</a> 
    </body>
</html>