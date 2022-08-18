<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <h2 style="text-align: center"> LOGIN </h2>
  <div class = "container" >
    <form action="LoginController" method="post">
        <label for = "usrname"></label>
        <input type = "text" name = "uname" id = "username" placeholder = "usrname" required>
        <br>
        <label for = "psw"></label>
       <input type = "text" name = "password" id = "psw" placeholder = "psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title = "must contain at least one number
        one uppercase letter
        one lowercase letter
        and at least 8 or more characters" required>
        <br>
        <input type = "submit" value = "submit" style="text-align: center">
    </form>
   </div>
   <div id = "message">
    <h3>Password must contain the following:</h3>
    <p id = "letter" class = "invalid">A <b>lowercase</b>letter</p>
    <p id = "number" class = "invalid">A <b>number</b></p>
    <p id = "length" class= "invalid">minimum <b>8 characters</b></p>
   </div>
        
   
   <script src= "login.js"></script>
</body>
</html>