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
       .open-button4 {
          background-color: rgb(50, 38, 68);
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 90px;
          left: 15px;
          width: 280px;
        }
      
       
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
            <input type="text" placeholder="Enter Your Id" name="id" >
        
            <label for="psw"><b>Employee Name</b></label>
            <input type="text" placeholder="Eenter your name" name="username">
         
            <label for="psw"><b>Employee Email</b></label>
            <input type="text" placeholder="Enter Email" name="email">

            <label for="psw"><b>Project Name</b></label>
            <input type="text" placeholder="Enter Project Name" name="project" >

        
            <label for="psw"><b>Manager name</b></label>
            <input type="text" placeholder="Enter Manager name" name="manager">
        
            <label for="psw"><b>Employee Contact</b></label>
            <input type="text" placeholder="Enter contact number" name="contact">
            
            <label for="psw"><b>Floor Number</b></label>
            <input type="text" placeholder="Enter Floor number" name="Floor">
            
            <label for="psw"><b>Seat</b></label>
            <input type="text" placeholder="Enter Seat Number" name="seat">
        
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
              <label for="psw"><b>New Floor No.</b></label>
              <input type="text" placeholder="Enter New floor Number" name="floor" required>


            <button type="submit" class="btn">Change seat</button>
            <button type="button" class="btn cancel" onclick="closeForm1()">Close</button>
        
          </form>
        </div>
        
        <button class="open-button3" onclick="openForm3()">Search Seat</button>
        
        <div class="form-popup1" id="myForm3">
          <form action="Search1" method="get" class="form-container">
            <h2>Enter Seat Number</h2>
            
            <label for="psw"><b>Seat</b></label>
            <input type="text" id="seat1" placeholder="Enter Seat Number" name="seat" required>
        
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




<button class="open-button4" onclick="openForm4()">Enter Floor No.</button>
        
        <div class="form-popup1" id="myForm4">
          <form action=Search23 method="get" class="form-container">
            <h2>Enter Floor Number</h2>
            
            <label for="psw"><b>Floor</b></label>
            <input type="text" id="seat1" placeholder="Enter Floor Number" name="floor" required>
        
            <button type="submit" class="btn">Search</button>
            <button type="button" class="btn cancel" onclick="closeForm4()">Close</button>
        
          </form>
        </div>
        
        <script>
        function openForm4() {
          document.getElementById("myForm4").style.display = "block";
        }
        
        function closeForm4() {
          document.getElementById("myForm4").style.display = "none";
        }
        </script>
        


















<script>
        function register() {
          console.log(document.getElementById("seat1"));
          const seatNumber=document.getElementById("seat1").value;
          console.log(seatNumber);
          const el = document.getElementById(seatNumber); 
          el.className="seat selected";
                }
       </script>


    <div class="movie-container">
      <label>Floor Number:</label>
      <select id="movie">
        <option value="88">1st Floor</option>
        
      </select>
    </div>

    <ul class="showcase">
      <li>
        <div class="seat"></div>
        <small></small>
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
        <button class="seat" id="1">F2-1</button>
        <button class="seat selected" id="2">F2-2</button>
        <button class="seat selected" id="3">F2-3</button>
        <button class="seat" id="4">F2-4</button>
        <button class="seat selected" id="5">F2-5</button>
        <button class="seat selected" id="7">F2-6</button>
        <button class="seat selected" id="7">F2-7</button>
        <button class="seat" id="8">F2-8</button>
        <button class="seat selected" id="9">F2-9</button>
        <button class="seat selected" id="10">F2-10</button>
        <button class="seat selected" id="11">F2-11</button>
      </div>
      <div class="row">
        <button class="seat" id="12">F2-12</button>
        <button class="seat selected" id="13">F2-13</button>
        <button class="seat selected" id="14">F2-14</button>
        <button class="seat" id="15">F2-15</button>
        <button class="seat selected" id="16">F2-16</button>
        <button class="seat" id="17">F2-17</button>
        <button class="seat" id="18">F2-18</button>
        <button class="seat" id="19">F2-19</button>
        <button class="seat" id="20">F2-20</button>
        <button class="seat selected" id="21">F2-21</button>
        <button class="seat selected" id="22">F2-22</button>
      </div>

      <div class="row">
        <button class="seat" >F2-23</button>
        <button class="seat" >F2-24</button>
        <button class="seat selected">F2-25</button>
        <button class="seat">F2-26</button>
        <button class="seat selected">F2-27</button>
        <button class="seat">F2-28</button>
        <button class="seat">F2-29</button>
        <button class="seat">F2-30</button>
        <button class="seat">F2-31</button>
        <button class="seat">F2-32</button>
        <button class="seat">F2-33</button>
      </div>

      <div class="row">
        <button class="seat">F2-34</button>
        <button class="seat">F2-35</button>
        <button class="seat selected">F2-36</button>
        <button class="seat">F2-37</button>
        <button class="seat">F2-38</button>
        <button class="seat">F2-39</button>
        <button class="seat selected">F2-40</button>
        <button class="seat">F2-41</button>
        <button class="seat">F2-42</button>
        <button class="seat">F2-43</button>
        <button class="seat">F2-44</button>
      </div>

      <div class="row">
        <button class="seat">F2-45</button>
        <button class="seat">F2-46</button>
        <button class="seat selected">F2-47</button>
        <button class="seat">F2-48</button>
        <button class="seat">F2-49</button>
        <button class="seat">F2-50</button>
        <button class="seat">F2-51</button>
        <button class="seat">F2-52</button>
        <button class="seat">F2-53</button>
        <button class="seat">F2-54</button>
        <button class="seat">F2-55</button>
      </div>
    <div class="row">
        <button class="seat">F2-56</button>
        <button class="seat">F2-57</button>
        <button class="seat selected">F2-58</button>
        <button class="seat">F2-59</button>
        <button class="seat selected">F2-60</button>
        </div>
      </div>
    
<!--  <p class="text">
      You have selected <span id="count">26</span> out of <span id="total">62</span>
    </p> -->
    <script src="script.js"></script>
  
</body>
</html>