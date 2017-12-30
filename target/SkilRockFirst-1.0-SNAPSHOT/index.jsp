
<%  
    String pageName = "Portal.jsp"; 
    String pageName1="Portal.jsp";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100vh; /* For 100% screen height */
  }
  </style>
  <script>
      
   function redirectPage(pageName){
    window.location.href=pageName;
}  

function redirectPage1(pageName1){
    window.location.href=pageName1;
}  
      </script>
</head>
<body style="background-color:black">
        
   
<div class="container">

    <div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="trial2.jpg" alt="Los Angeles" width="1100" height="500">
      <div class="carousel-caption">
        <h3>SkilRock Trial Portal</h3>
        <p>
        <form>
            
            <button id="player" type="button" class="btn btn-lg btn-success" onclick="redirectPage('<%=pageName%>')">I'm Player</button>   
            <button id="officer" type="button" class="btn btn-lg btn-danger" onclick="redirectPage1('<%=pageName1%>')">I'm Officer</button>   
       
        </p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="trial1.jpg" alt="Chicago" width="1100" height="500">
      <div class="carousel-caption">
        <h3>SkilRock Trial Portal</h3>
        <button id="player" type="button" class="btn btn-lg btn-success" onclick="redirectPage('<%=pageName%>')">I'm Player</button>   
        <button id="officer" type="button" class="btn btn-lg btn-danger" onclick="redirectPage1('<%=pageName1%>')">I'm Officer</button>   
       
       </div>   
    </div>
    <div class="carousel-item">
      <img src="trial4.jpg" alt="New York" width="1100" height="500">
      <div class="carousel-caption">
        <h3>SkilRock Trial Portal</h3>
        <button id="player" type="button" class="btn btn-lg btn-success" onclick="redirectPage('<%=pageName%>')">I'm Player</button>   
        <button id="officer" type="button" class="btn btn-lg btn-danger" onclick="redirectPage1('<%=pageName1%>')">I'm Officer</button>   
            </form> 
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>



</div>

</body>
</html>
