<html lang="en"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css">
    <title> Seat Booking</title>
  </head>
  <body>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}
        
        /* Button used to open the contact form - fixed at the bottom of the page */
        .open-button {
          background-color: rgb(50, 38, 68);
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 30px;
          right: 28px;
          width: 280px;
        }

        .open-buttonl {
          background-color: rgb(107, 133, 219);
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 90px;
          right: 28px;
          width: 280px;
        }

        .open-button2 {
          background-color: rgba(12, 241, 127, 0.63);
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 150px;
          right: 28px;
          width: 280px;
        }
        
        
        .open-button3 {
          background-color: #555;
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 22px;
          left: 15px;
          width: 280px;
        }
        
        .form-popup1 {
          display: none;
          position: fixed;
          bottom: 22px;
          left : 15px;
          border: 3px solid #f1f1f1;
          z-index: 9;
        }
        


        
        /* The popup form */
        .form-popup {
          display: none;
          position: fixed;
          bottom: 0;
          right: 15px;
          border: 3px solid #f1f1f1;
          z-index: 9;
        }
        
        /* Add styles to the form container */
        .form-container {
          max-width: 300px;
          padding: 10px;
          background-color: white;
        }
        
        /* Full-width input fields */
        .form-container input[type=text], .form-container input[type=password] {
          width: 100%;
          padding: 3px;
          margin: 5px 0 22px 0;
          border: none;
          background: #f1f1f1;
        }
        
        /* When the inputs get focus, do something */
        .form-container input[type=text]:focus, .form-container input[type=password]:focus {
          background-color: #ddd;
          outline: none;
        }
        
        /* Set a style for the submit/login button */
        .form-container .btn {
          background-color: #04AA6D;
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          width: 100%;
          margin-bottom:10px;
          opacity: 0.8;
        }
        
        /* Add a red background color to the cancel button */
        .form-container .cancel {
          background-color: red;
        }
        
        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
          opacity: 1;
        }
        </style>
        
        
        
        <button class="open-button" onclick="openForm()">Register here</button>
        
        <div class="form-popup" id="myForm">
          <form action="Register" method="post" class="form-container">
            <h1>Enter details</h1>
        
            <label for="psw"><b>Employee Id</b></label>
            <input type="text" placeholder="Enter Your Id" name="id" required="">
        
            <label for="psw"><b>Employee Name</b></label>
            <input type="text" placeholder="Eenter your name" name="username" required="">
         
            <label for="psw"><b>Employee Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required="">

            <label for="psw"><b>Project Name</b></label>
            <input type="text" placeholder="Enter Project Name" name="project" required="">

        
            <label for="psw"><b>Manager name</b></label>
            <input type="text" placeholder="Enter Manager name" name="manager" required="">
        
            <label for="psw"><b>Employee Contact</b></label>
            <input type="text" placeholder="Enter contact number" name="contact" required="">
        
            <label for="psw"><b>Seat</b></label>
            <input type="text" placeholder="Enter Seat Number" name="seat" required="">
        
            <button type="submit" class="btn">Sign up</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
        
          </form>
        </div>
       
        <button class="open-buttonl" onclick="openForm1()">Update</button>
        
        <div class="form-popup" id="myForm1">
          <form action="/update" method="post" class="form-container">
            <h1>Enter New Seat Number</h1>
        
            <label for="psw"><b>Employee Id</b></label>
            <input type="text" placeholder="Enter Your Id" name="id" required="">
            <label for="psw"><b>New Seat</b></label>
            <input type="text" placeholder="Enter New Seat Number" name="seat" required="">



            <button type="submit" class="btn">Change seat</button>
            <button type="button" class="btn cancel" onclick="closeForm1()">Close</button>
        
          </form>
        </div>
        
        <button class="open-button3" onclick="openForm3()">Search Seat</button>
        
        <div class="form-popup1" id="myForm3">
          <form action="Search1" method="post" class="form-container">
            <h2>Enter Seat Number</h2>
            
            <label for="psw"><b>Seat</b></label>
            <input type="text" placeholder="Enter Seat Number" name="seat" required>
        
            <button type="submit" class="btn">Search Seat</button>
            <button type="button" class="btn cancel" onclick="closeForm3()">Close</button>
        
          </form>
        </div>
        
        <script>
        function openForm3() {
          document.getElementById("myForm3").style.display = "block";
        }
        
        function closeForm3() {
          document.getElementById("myForm3").style.display = "none";
        }
        </script>
        
        
        



        <script>
        function openForm() {
          document.getElementById("myForm").style.display = "block";
        }
        
        function closeForm() {
          document.getElementById("myForm").style.display = "none";
        }
        </script>

         
<script>
    function openForm1() {
      document.getElementById("myForm1").style.display = "block";
    }
    
    function closeForm1() {
      document.getElementById("myForm1").style.display = "none";
    }
    </script>

<button class="open-button2" onclick="openForm2()">Remove</button>
        
<div class="form-popup" id="myForm2">
  <form action="Remove" method="post" class="form-container">
    <h1>Enter Employee Details</h1>

    <label for="psw"><b>Employee Id</b></label>
    <input type="text" placeholder="Enter Your Id" name="id" required>
    <label for="psw"><b>Seat</b></label>
    <input type="text" placeholder="Enter Seat Number" name="seat" required>



    <button type="submit" class="btn">Remove details</button>
    <button type="button" class="btn cancel" onclick="closeForm2()">Close</button>

  </form>
</div>

<script>
function openForm2() {
  document.getElementById("myForm2").style.display = "block";
}

function closeForm2() {
  document.getElementById("myForm2").style.display = "none";
}
</script>




    <div class="movie-container">
      <label>Floor Number:</label>
      <select id="movie">
        <option value="10">1st Floor </option>
        <option value="12">2nd Floor</option>
        <option value="8">3rd Floor</option>
        <option value="9">4th Floor</option>
        <option value="">5th Floor</option>
        <option value=""></option>
      </select>
    </div>

    <ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>N/A</small>
      </li>

      <li>
        <div class="seat selected"></div>
        <small>Selected</small>
      </li>

      <li>
        <div class="seat occupied"></div>
        <small>Occupied</small>
      </li>
    </ul>

    <div class="container">
      <div class="gate"></div>
      <div class="row">
        <div class="seat" id="1">F1-1</div>
        <div class="seat selected" id="2">F1-2</div>
        <div class="seat selected" id="3">F1-3</div>
        <div class="seat" id="4">F1-4</div>
        <div class="seat selected" id="5">F1-5</div>
        <div class="seat selected" id="7">F1-6</div>
        <div class="seat selected" id="7">F1-7</div>
        <div class="seat" id="8">F1-8</div>
        <div class="seat selected" id="9">F1-9</div>
        <div class="seat selected" id="10">F1-10</div>
        <div class="seat selected" id="11">F1-11</div>
      </div>
      <div class="row">
        <div class="seat" id="12">F1-13</div>
        <div class="seat selected" id="13">F1-13</div>
        <div class="seat selected" id="14">F1-14</div>
        <div class="seat" id="15">F1-15</div>
        <div class="seat selected" id="16">F1-16</div>
        <div class="seat" id="17">F1-17</div>
        <div class="seat" id="18">F1-18</div>
        <div class="seat" id="19">F1-19</div>
        <div class="seat" id="20">F1-20</div>
        <div class="seat selected" id="21">F1-21</div>
        <div class="seat selected" id="22">F1-22</div>
      </div>

      <div class="row">
        <div class="seat" >F1-23</div>
        <div class="seat" >F1-24</div>
        <div class="seat selected">F1-25</div>
        <div class="seat">F1-26</div>
        <div class="seat selected">F1-27</div>
        <div class="seat">F1-28</div>
        <div class="seat">F1-29</div>
        <div class="seat">F1-30</div>
        <div class="seat">F1-31</div>
        <div class="seat">F1-32</div>
        <div class="seat">F1-33</div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
    <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
       <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat selected"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      </div>
    
  <p class="text">
      You have selected <span id="count">26</span> out of <span id="total">62</span>
    </p>
    <script src="script.js"></script>
  
</body>
</html>