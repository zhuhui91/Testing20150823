package mybean;
public class Login{
   String  logname,password,backNews="";  
   String  theTime;
   boolean success=false; 
   public void setLogname(String name){
      logname=name;
   }
   public String getLogname(){
      return logname;
   }
   public void setPassword(String pw){
      password=pw;
   }
   public String getPassword(){
      return password;
   }
   public String getBackNews(){
      return backNews;
   }
   public void setBackNews(String s){
      backNews=s;
   } 
   public void setSuccess(boolean b){
      success=b;
   }
   public boolean getSuccess(){
      return success;
   }
   public void setTheTime(String ltime){
	   theTime=ltime;
	   }
  public String getTheTime(){
     return theTime;
  }
}

