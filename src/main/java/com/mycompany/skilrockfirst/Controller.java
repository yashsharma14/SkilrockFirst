

package com.mycompany.skilrockfirst;

public class Controller {

public static int pid;
public static String pname;
public static String pemail;
public static String ppassword;
public static String paddress;
public static String pcontact;
public static String page;
    
public int getpid()
{
    return this.pid;
}
public String getpName()
{
return this.pname;    
}
public String getpEmail()
{
   return this.pemail;
}
public String getpPassword(){
    
    return this.ppassword;
}
public String getPAddress()
{
    return this.paddress;
}

public String getpAge()
{
    return this.page;
}

public String getpContact()
{
    return this.pcontact;
}

public void setpid(int id)
{
    this.pid=id;
}
public void setpName(String name)
{
    this.pname=name;
}
public void setpEmail(String email)
{
    this.pemail=email;
}
public void setpPassword(String pass)
{
    this.ppassword=pass;
}
public void setpAge(String age)
{
    this.page=age;
}
public void setpAddress(String address)
{
    this.paddress=address;
}
 public void setpContact(String contact)
 {
     this.pcontact=contact;
 }

 public void clearAll()
 {
     pid=0;
     pname="";
     page="";
     pcontact="";
     paddress="";
     pemail="";
     ppassword="";
             
 }
}
