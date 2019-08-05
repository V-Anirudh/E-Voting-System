<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>
* {
  box-sizing: border-box;
}

.container {
	float:left;
	background-color:  black;	
 	background-size:     cover;  
 	background-repeat: repeat;
    background-position: center center center ;
    width:100%; 
	
}
.header {
  padding: 35px;
  text-align: center;
  background: linear-gradient(to bottom right, #ff9933 20%,#ffffff  , #228B22 65%);
  color: white;
   font-size: 50px;
  font-family:fantasy;
}
.tab-content .container
{
	background-image: url("https://wallpaperaccess.com/full/465919.jpg");
	background-size:     cover;                   
    background-repeat:   repeat;
    background-position: 10%;
    width:100%; 
}
.form-submit {
  text-align: right;
  padding-top: 50px; }

</style>
</head>
<body>
<div class="header">
  <font size="9" color="#000080">E-VOTING SYSTEM</font>
  <p style="padding-left: 400px;">&#8220;<font color="white" size="4">The ballot is stronger than the bullet.&#8220;- Abraham Lincoln</font> </p>
</div> 
<div class="containers" >
  <ul class="nav nav-tabs" >
    
    <li><a data-toggle="tab" href="#menu1"><font color="#000000">Voter List</font></a></li>
    <li><a data-toggle="tab" href="#menu2"><font color="#000000">Candidate List</font></a></li>
    <li><a data-toggle="tab" href="#menu3"><font color="#000000"> Election Results</font></a></li>
   
    <li ><a data-toggle="tab" href="#menu4"><font color="#000000">Logout</font></a></li>
  </ul>
</div>
 <div class="tab-content">
   
    <div id="menu1" class="tab-pane fade">
    		<jsp:include page="VoterList.jsp"/>
    </div>
    <div id="menu2" class="tab-pane fade">
      		<jsp:include page="CandidateList.jsp"/>
    </div>
    <div id="menu3" class="tab-pane fade">
    	  	<jsp:include page="ElectionResults.jsp"/>
    </div>
    <div id="menu4" class="tab-pane fade">
    	  	<jsp:include page="AdminLogout.jsp"/>
    </div>
    
 </div> 
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main1.js"></script>

</body>
</html>