
package compack;

import java.sql.*;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EjavaBeans {
    
String name,password,email,gender ,address,dob,insname,elig,qid;
Blob pic; 
int wrong,correct, unattempted,attempted,total,marks;

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }

    public String getInsname() {
        return insname;
    }

    public String getElig() {
        return elig;
    }

    public void setElig(String elig) {
        this.elig = elig;
    }

    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid;
    }

    public Blob getPic() {
        return pic;
    }

    public void setPic(Blob pic) {
        this.pic = pic;
    }

    public int getWrong() {
        return wrong;
    }

    public void setWrong(int wrong) {
        this.wrong = wrong;
    }

    public int getCorrect() {
        return correct;
    }

    public void setCorrect(int correct) {
        this.correct = correct;
    }

    public int getUnattempted() {
        return unattempted;
    }

    public void setUnattempted(int unattempted) {
        this.unattempted = unattempted;
    }

    public int getAttempted() {
        return attempted;
    }

    public void setAttempted(int attempted) {
        this.attempted = attempted;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setInsname(String insname) {
        this.insname = insname;
    }
    long contact;
    public EjavaBeans(){}
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public long getContact() {
        return contact;
    }

    public void setContact(long contact) {
        this.contact = contact;
    }
  
      Connection con = ConnectionProvider.getConnection();
     public int save()
    {
        int i = 0;
        String s=null;
        try
        {
         //Connection con = ConnectionProvider.getConnection();
         PreparedStatement pstmt2 = con.prepareStatement("insert into stud_reg values(?,?,?,?,?,?,?,?,?)");
         pstmt2.setString(1,name);
         pstmt2.setString(2,password);
         pstmt2.setString(3,address);
         pstmt2.setString(4,dob);
         pstmt2.setString(5,gender);
         pstmt2.setLong(6,contact);
         pstmt2.setString(7,email);
         pstmt2.setBinaryStream(8,null);
         pstmt2.setString(9,insname);
         i = pstmt2.executeUpdate();
        
         if(i!=0)
         {
             return i;
         }
         pstmt2.close();
         con.close();
         
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return i;
    }
    public boolean finda(HttpServletRequest request)
    {
       boolean flag= false;
      /* {
        Connection con = ConnectionProvider.getConnection();
        PreparedStatement pstmt = con.prepareStatement("select * from stud_reg where email=? and password=?");
        pstmt.setString(1,email);
        pstmt.setString(2,password);
        ResultSet rset = pstmt.executeQuery();
        if(rset.next())
        {
         setName(rset.getString(2));
         flag = true;   
        }
       }catch(SQLException e)
       {
           e.printStackTrace();
       }
        return flag;*/
    try
     {
      HttpSession session;
      session=request.getSession();
     // Connection con = ConnectionProvider.getConnection();
      PreparedStatement pstmt = con.prepareStatement("select * from admin where email=? and password=?");
      pstmt.setString(1,email);
      session.setAttribute("amail",email);
      pstmt.setString(2,password);
      session.setAttribute("apass",password);
      ResultSet rset=pstmt.executeQuery();
      if(rset.next())
        {
         session.setAttribute("stname",rset.getString(1));
         flag = true;   
        }
     }catch(SQLException e)
       {
           e.printStackTrace();
       }
        return flag;
     }
    
     public boolean finds(HttpServletRequest request)
     {
         boolean flag=false;
      try{
         HttpSession session;
      session=request.getSession(); 
    //  Connection con = ConnectionProvider.getConnection();
      PreparedStatement pstmt = con.prepareStatement("select * from stud_reg where email=? and password=?");
      pstmt.setString(1,email);
      session.setAttribute("smail",email);
      pstmt.setString(2,password);
      session.setAttribute("spass",password);
      ResultSet rset = pstmt.executeQuery();
      if(rset.next())
      {
        session.setAttribute("stname",rset.getString(1));
        flag=true;
      }
      }catch(SQLException e)
       {
           e.printStackTrace();
       }
        return flag;
     }
      public boolean myadd(HttpServletRequest request)
     {
         boolean flag=false;
         try
             {
 String quid = request.getParameter("quid");
 String qno = request.getParameter("qno");
 String ques = request.getParameter("ques");
 String option1 = request.getParameter("option1");
 String option2 = request.getParameter("option2");  
 String option3 = request.getParameter("option3");  
 String option4 = request.getParameter("option4");  
 String option5 = request.getParameter("option5");
 String ans = request.getParameter("ans");
 
 //Connection con = ConnectionProvider.getConnection();
 PreparedStatement stmt = con.prepareStatement("insert into question values(?,?,?,?,?,?,?,?)");
 stmt.setString(1,quid);
 stmt.setString(2,qno);
 stmt.setString(3,ques);
 stmt.setString(4,option1);
 stmt.setString(5,option2);
 stmt.setString(6,option3);
 stmt.setString(7,option4);
 stmt.setString(8,ans);
 int r = stmt.executeUpdate();
 if(r>0)
 {
     flag=true;
     
 }
}catch(Exception e)
{
  e.printStackTrace();
}
         return flag;
     }
      public boolean myadde(HttpServletRequest request)
     {
         boolean flag=false;
      try
{
 String quid = request.getParameter("examname");
 String cname = request.getParameter("cname");  
 String rule1 = request.getParameter("rule1");  
 String rule2 = request.getParameter("rule2");  
 String rule3 = request.getParameter("rule3");  
 String rule4 = request.getParameter("rule4");  
 
 
 PreparedStatement stmt = con.prepareStatement("insert into examname values(?,?,?,?,?,?)");
 stmt.setString(1,quid);
 stmt.setString(2,cname);
 stmt.setString(3,rule1);
 stmt.setString(4,rule2);
 stmt.setString(5,rule3);
 stmt.setString(6,rule4);
 int r = stmt.executeUpdate();
 if(r>0)
 {
     flag=true;
     //RequestDispatcher rd = request.getRequestDispatcher("newexam.jsp");
     //rd.forward(request, response);
 }
}catch(Exception e)
{
  e.printStackTrace();
}
   return flag;
     }
      public ResultSet rules(HttpServletRequest request)
      {
          HttpSession session;
      session=request.getSession(); 
              String exam;
             exam = request.getParameter("exam");
             System.out.println("x"+exam);
             ResultSet rset1=null;
     //exam=(String)session.getAttribute("exam");
     session.setAttribute("sexam",exam);
     String stname = (String)session.getAttribute("name");
     String email = (String)session.getAttribute("semail");
     session.setAttribute("st_name",stname);
     session.setAttribute("semail",email);
     
    // out.print("<h3> "+n+"!</h3>");
     try
    {
     con = ConnectionProvider.getConnection();
     PreparedStatement pstmt1 = con.prepareStatement("select * from examname where quid = ?");
     pstmt1.setString(1,exam);
     rset1 = pstmt1.executeQuery();
     if(rset1.next())
     {    
       String exam1 = rset1.getString(1);
       session.setAttribute("exam1",exam1);
      }
     }catch(Exception e)
    {
        e.printStackTrace();
       
    }
     return rset1;
     
   }
    public void result1(HttpServletRequest request)
    {
           HttpSession session;
      session=request.getSession(); 
        String n ;
        try
    {

//String elig = session.getAttribute("elig").toString();
                   email = session.getAttribute("smail").toString();
//st_id = Integer.parseInt(sid);
wrong = Integer.parseInt(session.getAttribute("wrong").toString());
correct = Integer.parseInt(session.getAttribute("correct").toString());
unattempted = Integer.parseInt(session.getAttribute("unattempted").toString());
attempted = Integer.parseInt(session.getAttribute("attempted").toString());
total = Integer.parseInt(session.getAttribute("total").toString());
System.out.println("total="+total);
        
  double res, marks;
  String answer;
     res = (correct*100.0)/total ; 
     System.out.println("Result : "+res);
     if(res>=45)
       elig = "Passed!";
      else
       elig = "Failed!";  
     session.setAttribute("elig",getElig());
   session.setAttribute("res",String.valueOf(res));
     String qid = session.getAttribute("sexam").toString();
     System.out.println("qid"+qid);
     answer = request.getParameter("options");
    }catch(Exception e)
    {
      e.printStackTrace();
    }
 }
 public int result2(HttpServletRequest request)
        {
           int r=0;
           
             HttpSession session;
      session=request.getSession(); 
      
        try
        {
            email = session.getAttribute("smail").toString();
//st_id = Integer.parseInt(sid);
wrong = Integer.parseInt(session.getAttribute("wrong").toString());
correct = Integer.parseInt(session.getAttribute("correct").toString());
unattempted = Integer.parseInt(session.getAttribute("unattempted").toString());
attempted = Integer.parseInt(session.getAttribute("attempted").toString());
total = Integer.parseInt(session.getAttribute("total").toString());
marks = Integer.parseInt(session.getAttribute("marks").toString());
 String qid = session.getAttribute("sexam").toString();
//String elig = session.getAttribute("elig").toString();
    PreparedStatement pstmt1= con.prepareStatement("insert into stud_res values(?,?,?,?,?,?,?)");
    pstmt1.setString(1,email);
     pstmt1.setString(2,qid);
     pstmt1.setInt(3,correct);
     pstmt1.setInt(4,wrong);
     pstmt1.setInt(5,unattempted);
     pstmt1.setInt(6,marks);
     pstmt1.setString(7,elig);
     r = pstmt1.executeUpdate();
     System.out.println("r="+r);
    }
        catch(Exception e)
    {
      e.printStackTrace();
    }
        return r;
}
 
 
 public ResultSet result3()
 {
     ResultSet rset=null;
 try{
     
 PreparedStatement pstmt = con.prepareStatement("select * from stud_reg where email=?");
     pstmt.setString(1,email);
     rset = pstmt.executeQuery();
 }   catch(Exception e)
    {
      e.printStackTrace();
    }
       return rset;
}
}


    
    

