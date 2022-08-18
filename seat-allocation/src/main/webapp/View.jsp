<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "">
</head>
<style>
.container
{
    
    padding: 10%;
    background-color:#ccc;
}

input[type = submit]
{
    padding: 6px;
    background-color: #333;
    color:white;

}

input{
    padding: 6px;
    background-color: black;
    color: white;
}


</style>

<body>
    <div class = "container" align = "center">
        <form action=Viewseat23	 method="post"> Enter  the floor number:
        <input type="text" name="Floor" />
        <br><br>
        <input type="submit" value="search" /> </form>
        <br>
         <h1 style = "color: black;"> Available</h1>
          
          <% 
          if (request.getAttribute("Available") == null)
          {
        	  request.setAttribute("Available", " ");
              request.setAttribute("Allocated", " ");
              
          }
          %>
           
          <p><%=request.getAttribute("Available") %></p> 
        <br>
        <h1 style = "color: black;">Allocated </h1>
   <p><%=request.getAttribute("Allocated") %></p> 

</div>
</body>
</html>
    