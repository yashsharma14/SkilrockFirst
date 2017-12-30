
<%@ page import="com.mycompany.skilrockfirst.Controller"%>

<%!
Controller con;
String pid;
String name;
String email;
String password;
String contact;
String age;
String address;
int id;
%>
<%
    
    try
    {
    
    
con=new Controller();
id=con.getpid();        
pid="Id: Gplay"+String.valueOf(id);
name=con.getpName();
email=con.getpEmail();
password=con.getpPassword();
contact=con.getpContact();
age=con.getpAge();
address=con.getPAddress();
        
System.out.println(pid);

    }catch(Exception e)
    {
        System.out.println(e);
    }
    

    %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Welcome username</h2>
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">View Profile</a></li>
    <li><a data-toggle="tab" href="#menu2">Edit Profile</a></li>
    <li style="float:right;"><a data-toggle="tab" href="#menu3"><button type="button" onclick="logout()" class="btn btn-md btn-default">Logout</button></a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>This is home..</p>
    </div>
 
      <div id="menu1" class="tab-pane fade">
      <h3>My Profile</h3>
   
      
      
      
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"> <%=pid%> </h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic"  class="img-circle img-responsive"> </div>
    
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                          <td><strong>Player Name</strong></td>
                          <td><%=name%></td>
                      </tr>
                      <tr>
                          <td><strong>Player Age</strong></td>
                          <td><%=age%></td>
                      </tr>
                      <tr>
                          <td><strong>Player Contact</strong></td>
                        <td><%=contact%></td>
                      </tr>
                   
                         <tr>
                             <tr>
                                 <td><strong>Player Email</strong></td>
                        <td><%=email%></td>
                      </tr>
                        <tr>
                            <td><strong>Player Address</strong></td>
                            <td><%=address%></td>
                      </tr>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
                </div>
              </div>
            </div>
                
          </div>
        </div>
      </div>
    
      
      
      
      
      
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Edit Profile</h3>
  
    
      
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"> <%=pid%> </h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic"  class="img-circle img-responsive"> </div>
    
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                          <td><strong>Player Name</strong></td>
                          <td><input id="pname" type="text" value="<%=name%>"></td>
                      </tr>
                      <tr>
                          <td><strong>Player Age</strong></td>
                          <td><input id="page" type="text" value="<%=age%>"></td>
                      </tr>
                      <tr>
                          <td><strong>Player Contact</strong></td>
                          <td><input id="pcontact" type="text" value="<%=contact%>"></td>
                      </tr>
                      <tr>
                          <td><strong>Player Password</strong></td>
                          <td><input id="ppassword" type="text" value="<%=password%>"></td>
                      </tr>
                   
                         <tr>
                             <tr>
                                 <td><strong>Player Email</strong></td>
                                 <td><input id="pemail" type="text" value="<%=email%>"></td>
                      </tr>
                        <tr>
                            <td><strong>Player Address</strong></td>
                            <td><input id="paddress" type="text" value="<%=address%>"></td>
                      </tr>
                   
                      <tr>
                          <td></td>
                          <td><button onclick="updateme()" type="button" class="btn btn-md btn-success">Update me</button></td> 
                      </tr>
                     
                    </tbody>
                  </table>
                  
                </div>
              </div>
            </div>
                
          </div>
        </div>
      </div>
    
      
      
      
    
    </div>
    
  </div>
</div>

                      <script>
                          
    function logout()
    {
       
       window.location.href="index.jsp";
       
    }
    
    function updateme()
    {
        var id=<%=id%>
        var name=document.getElementById("pname").value;
        var email=document.getElementById("pemail").value;
        var password=document.getElementById("ppassword").value;
        var contact=document.getElementById("pcontact").value;
        var age=document.getElementById("page").value;
        var address=document.getElementById("paddress").value;
        
        
        
          $.get('registraion.jsp?id=Player&type=update&pid='+id+'&name='+name+'&email='+email+'&pass='+password+'&age='+age+'&contact='+contact+'&address='+address,null,function(resp){
           
        alert("Successful updated!!!After next login your profile will be upd   ated");
});
    }
                      
                      </script>
                      
                      
</body>
</html>
