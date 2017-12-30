
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  <style>
      
     body {
    background:#333;
}
.form_bg {
    background-color:#eee;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #fff;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 320px;
    height: 350px;
}
.form_bg1 {
    background-color:#eee;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #fff;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 400px;
    height: 100vh;
}

.align-center {
    text-align:center;
} 



      
  </style>

  
<script type="text/javascript">

$(document).ready(function(){
        $("#signup_player").show();
             $("#Login_panel").hide();
              $("#success").hide();
          $("#login_failed").hide();
        

        $("#loginme").click(function(){
        $("#Login_panel").show();
   $("#success").hide();
   $("#login_success").hide();
   
        $("#signup_player").hide();
          
    });

$("#signup").click(function(){
        $("#Login_panel").hide();
   $("#success").hide();
   $("#login_success").hide();
   
        $("#signup_player").show();
          
    });
    });
    
</script>



</head>


<body>
    <div class="container" id="Login_panel">
        <div class="row">
            <div class="form_bg">
                    <h2 class="text-center">Login panel</h2>
                    <br/>
                    <div class="form-group">
                        <input type="email" class="form-control" id="userid" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="pass" placeholder="Enter Password">
                    </div>
                    <br/>
                    <div class="align-center">
                        <button type="submit" class="btn btn-success" onclick="logincheck()">Login</button>
                    </div>
                    <br />
                    <div class="align-center">
                        <button type="submit" class="btn btn-danger" id="signup">Not yet account!</button>  
                    </div>
            </div>
        </div>
    </div>

                    
    <div id="signup_player">
   <div class="container">
        <div class="row">
            <div class="form_bg1">
                
                    <h2 class="text-center">Registration panel</h2>
                    <br/>
                    <div class="form-group">
                        <input type="text" class="form-control" id="pname" placeholder="Enter full name">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" id="pemail" placeholder="Enter email">
</div>
                    
                    
                    <div class="form-group">
                        <input type="password" class="form-control" id="ppassword" placeholder="Enter password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="pcpassword" placeholder="Confirm password">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="page" placeholder="Age">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="pcontact" placeholder="Contact">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="paddress" placeholder="Complete Address">
                    </div>
                    
                    <br/>
                    <div class="align-center">
                        <button type="button" class="btn btn-success" onclick="signupplayer()">Signup</button>
                    </div>
                    <br />
                 <div class="align-center">
                        <button type="submit" class="btn btn-lg btn-danger" id="loginme">Log in me!</button>
                    </div>
                   
            </div>
        </div>
    </div>
                 
        
    </div>
    <div id="success" style="margin-top:550px;" align="center"><button type="button" class="btn btn-lg btn-success">Registration Successful</button> </div>
    <div id="login_success" style="margin-top:550px;" align="center"><button type="button" class="btn btn-lg btn-success">Login Successful</button> </div>
    <div id="login_failed" style="margin-top:550px;" align="center"><button type="button" class="btn btn-lg btn-danger">Login Failed</button> </div>
                    
    <script>
    function signupplayer()
    {
        var name=document.getElementById("pname").value;
        var email=document.getElementById("pemail").value;
        var pass1=document.getElementById("ppassword").value;
        var pass2=document.getElementById("pcpassword").value;
        var age=document.getElementById("page").value;
        var contact=document.getElementById("pcontact").value;
        var address=document.getElementById("paddress").value;
       
                     if(pass1==pass2)
                     {
 
        $.get('registraion.jsp?id=Player&type=register&name='+name+'&email='+email+'&pass='+pass1+'&age='+age+'&contact='+contact+'&address='+address,null,function(resp){
           
        $("#signup_player").hide();
             $("#Login_panel").show();
             $("#success").show().delay(1000).queue(function(n) {
  $(this).hide(); n();
});
           
                                             
                                                  });
    }
    else
    {
        alert("password does not match!");
    }
}


function logincheck()
{
    var user=document.getElementById("userid").value;
    var pass=document.getElementById("pass").value;
        
        
        
        $.get('registraion.jsp?id=Player&type=login&username='+user+'&password='+pass,null,function(res){
            
   
  if(res.trim()==='')
  {
             $("#login_failed").show().delay(1000).queue(function(n) {
  $(this).hide(); n();
});  
  }
  else
  {
             $("#login_success").show().delay(1000).queue(function(n) {
  $(this).hide(); n();
});  
          
                    window.location.href="PlayerDashboard.jsp";
        
  }
  

   
});

}
    
    </script>
        
    
    
    <!--player dashboard-->
    

</body>

</html>

