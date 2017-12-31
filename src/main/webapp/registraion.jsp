
<%@ page import ="java.sql.*" %>
<%@ page import="com.mycompany.skilrockfirst.Controller"%>


<%
  Controller cont;  
   Connection con;
   ResultSet rs;
   PreparedStatement ps;
   Statement st;   
   try
       {
           cont=new Controller();
  Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skilrock",
"root","");
       
System.out.println("connection created");

String id=request.getParameter("id");
String type=request.getParameter("type");

if(id.equalsIgnoreCase("player") && type.equalsIgnoreCase("register"))
{
System.out.println("come here");    
    String query="INSERT INTO player(pname,pemail,ppassword,page,pcontact,address) values(?,?,?,?,?,?)";
    
    ps=con.prepareStatement(query);
    
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    String age=request.getParameter("age");
    String contact=request.getParameter("contact");
    String address=request.getParameter("address");
    
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,password);
    ps.setString(4,age);
    ps.setString(5,contact);
    ps.setString(6,address);
    
    ps.execute();
    System.out.println("Player Record Inserted!!!");
    con.close();
}

if(id.equalsIgnoreCase("player") && type.equalsIgnoreCase("login"))
{
    System.out.println("login check");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    int count=0;
  st=con.createStatement();
    rs=st.executeQuery("select * from player");
    
    while(rs.next())
    {
        if(rs.getString(3).equalsIgnoreCase(username) && rs.getString(4).equalsIgnoreCase(password))
        {
            count=1;
            
            cont.setpid(rs.getInt(1));
            cont.setpAge(rs.getString(5));
            cont.setpAddress(rs.getString(7));
            cont.setpContact(rs.getString(6));
            cont.setpName(rs.getString(2));
            cont.setpPassword(rs.getString(4));
            cont.setpEmail(rs.getString(3));
            break;
        }
    }
    if(count==1)
    {
        %>
              true  
        <%
        System.out.println("Login Successful");
    }
    else
    {
        System.out.println("Login failed");
    }
}

if(id.equalsIgnoreCase("player") && type.equalsIgnoreCase("update"))
{

String pid=request.getParameter("pid");

    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    String age=request.getParameter("age");
    String contact=request.getParameter("contact");
    String address=request.getParameter("address");

String query="UPDATE player SET pname=?,pemail=?,ppassword=?,page=?,pcontact=?,address=? where pid='"+Integer.valueOf(pid)+"'";
    System.out.println(password);

    ps=con.prepareStatement(query);
    
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,password);
    ps.setString(4,age);
    ps.setString(5,contact);
    ps.setString(6,address);
    
ps.executeUpdate();

System.out.println("updated sucessfully");
    

}
if(id.equalsIgnoreCase("Officer") && type.equalsIgnoreCase("register"))
{

System.out.println("hello officer");
    String query="INSERT INTO officer(oname,oemail,opassword,oaddress,ocontact) values(?,?,?,?,?)";
    
    ps=con.prepareStatement(query);
    
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    String contact=request.getParameter("contact");
    String address=request.getParameter("address");
    
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,password);
    ps.setString(4,address);
    ps.setString(5,contact);
    
    ps.execute();
    con.close();


}

if(id.equalsIgnoreCase("Officer") && type.equalsIgnoreCase("login"))
{
    System.out.println("login check");
    String username=request.getParameter("username");
    String password=request.getParameter("pass");
    int count=0;
  st=con.createStatement();
    rs=st.executeQuery("select * from officer");
    
    while(rs.next())
    {
        if(rs.getString(3).equalsIgnoreCase(username) && rs.getString(4).equalsIgnoreCase(password))
        {
            count=1;
            
            cont.setpid(rs.getInt(1));
            cont.setpAddress(rs.getString(5));
            cont.setpContact(rs.getString(6));
            cont.setpName(rs.getString(2));
            cont.setpPassword(rs.getString(4));
            cont.setpEmail(rs.getString(3));
            break;
        }
    }
    if(count==1)
    {
        %>
              true  
        <%
        System.out.println("Login Successful");
    }
    else
    {
        System.out.println("Login failed");
    }
}

if(id.equalsIgnoreCase("officer") && type.equalsIgnoreCase("update"))
{

System.out.println("update");
String pid=request.getParameter("pid");

    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    String contact=request.getParameter("contact");
    String address=request.getParameter("address");

String query="UPDATE officer SET oname=?,oemail=?,opassword=?,oaddress=?,ocontact=? where oid='"+Integer.valueOf(pid)+"'";
    System.out.println(password);

    ps=con.prepareStatement(query);
    
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,password);
    ps.setString(4,address);
    ps.setString(5,contact);
    
ps.executeUpdate();

System.out.println("updated sucessfully");
    

}



       }catch(Exception e)
       {
           System.out.println(e);
       }
       
%>
