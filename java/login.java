package com.login 

import java.io.IOException;
import javax.serverlet.http.HttpServerletRequest
import javax.serverlet.http.HttpServerletResponse
import javax.serverlet.http.HttpSession 
    
//The user = Teacher and pass = Ace1

@WebServerlet("/Login")
public class Login extends HttpServerlet{
    
    
    protected void doPost(HttpServerletRequest request, HttpServerletResponse response){
        
        String uName = request.getParamater("uName");
        String uPass = request.getParamater("uPass");       
        
        if(uName.equals("Teacher") && uPass.equals("Ace1")){
        
            HttpSession session = request.getSession();
            session.setAttribute("username", "uName")
            response.sendRedirect("PAGEWEWANT.HTML")
        
        }else{
        
            response.sendRedirect("OTHERPAGEWEWANT.HTML")
        
        }
    }
        
    
}