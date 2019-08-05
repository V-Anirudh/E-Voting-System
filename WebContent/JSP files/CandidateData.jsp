<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=2.0" >
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Candidate Registration Page</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <script>
    
    function loginValidation()
    {
    var password=document.CandidateRegister.password.value;
    var rpassword=document.CandidateRegister.rpwd.value;
    if(password===rpassword)
    	{
    	return true;
    	}
    	else
    		{
    		alert("password should be same");
	return false;
    }
    }
    function validateDOB(){
    	  if(document.getElementById('birth_date').value==''){
    	    alert('Please select a date')
    	    return false
    	  }
    	  var dob=document.getElementById('birth_date').value
    	  console.log(dob)
    	    var today = new Date();
    	    var birthDate = new Date(dob);
    	    var age = today.getFullYear() - birthDate.getFullYear();
    	    var m = today.getMonth() - birthDate.getMonth();
    	    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
    	        age--;
    	    }
    	   if(age<18){
    	      alert('You are not eligible. Age should be above 18...!!!')
    	      return false;
    	   }
    	   else
    		   {
    		   return true;
    		   }
    	}
/*   function todo(){
    	var a=validateDOB();
    	if(a==false)
    		{
    		 alert('You are not eligible. Age should be above 18...!!!')
    		return false;
    		}
    	else {
    		return true;
    	}
    var b =	loginValidation();
    if(b==true)
	{
	 
	return true;
	}
else {
	alert("password should be same");
	return false;
}
    	}  */
    </script>
</head>
<body>

    <div class="main">
        <div class="container">
            <div class="signup-content">
                
                <div class="signup-form" >
                    <form method="POST" name="CandidateRegister" class="register-form" id="register-form" action="CandidateRegistration">
                        <h2>Candidate registration form</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Full Name :</label>
                                <input type="text" name="name" id="name" required/>
                            </div>
                        </div>
                         <div class="form-group">
                                <label for="gender">Gender :</label>
                                <div class="form-select">
                                    <select name="gender" id="gender">
                                        <option value=""></option>
                                        <option value="male" id="male">Male</option>
                                        <option value="female" id="female">Female</option>
                                       
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                      <div class="form-row">
                            <div class="form-group">
                                <label for="email">Email ID :</label>
                                <input type="email" name="email" id="email" required/>
                            </div>
                        </div>  
                      
                         <div>
                            <div class="form-group">
                                <label for="party_name">PARTY NAME :</label>
                                <input type="text"   name="party_name" id="party_name" required/>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State :</label>
                                <div class="form-select">
                                    <select name="state" id="state">
                                        <option value=""></option>
                                        <option value="telangana" id="ts">Telangana</option>
                                        <option value="andhra pradesh" id="ap">Andhra pradesh</option>
                                        <option value="karnataka" id="ka">Karnataka</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">Constituency :</label>
                                <div class="form-select">
                                    <select name="city" id="city">
                                        <option value="ts"></option>
                                        <option value="hyderabad">Hyderabad</option>
                                        <option value="secunderabad">Secunderabad</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="form-group">
                                <label for="state">Year :</label>
                                <div class="form-select">
                                    <select name="year" id="year">
                                        <option value=""></option>
                                        <option value="2019" id="2K19">2019</option>
                                        <option value="2024" id="2K24">2024</option>
                                        
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">Type of Election :</label>
                                <div class="form-select">
                                    <select name="election" id="election">
                                        <option value="ts"></option>
                                        <option value="MP">MP Election</option>
                                        <option value="MLA">MLA Election</option>
                                        <option value="MLC">MLC Election</option>
                                        
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birth_date">DOB :</label>
                            <input type="date" name="birth_date" id="birth_date" >
                        </div>
                       
                         <div>
                            <div class="form-group">
                                <label for="adhar_no">AADHAR NO :</label>
                                <input type="number"  pattern=".{12}" name="adhar_no" id="adhar_no" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password"> Create Password :</label>
                            <input type="password" name="password" id="password">
                        </div>
                       
                        <div class="form-group">
                            <label for="repeatpassword">Confirm Password :</label>
                            <input type="password" name="repeatpassword" id="rpwd" />
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" onclick="return  validateDOB()"  />
                        </div>
                    </form>
                </div>
            </div>
        </div>

   </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    
    <script src="js/main.js"></script>
</body>
</html>