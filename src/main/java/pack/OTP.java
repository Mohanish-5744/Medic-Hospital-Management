/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OTP {
    
    Connection con;
  // -------------   password reset page -------------
    String randomnumber = "";
    public void OTP()
    {
        Connection_to_mysql obj=new Connection_to_mysql();
        con=obj.con;
    }
    
    static int generatePin() throws Exception {
        OTP obj=new OTP();
        obj.OTP();
        Random generator = new Random();
        generator.setSeed(System.currentTimeMillis());

        int num = generator.nextInt(99999) + 99999;
        if (num < 100000 || num > 999999) {
            num = generator.nextInt(99999) + 99999;
            if (num < 100000 || num > 999999) {
                throw new Exception("Unable to generate PIN at this time..");
            }
        }
        return num;
    }

    @RequestMapping(value = "/adminpasswordreset", method = RequestMethod.GET)
    public String processRegisstration(
            org.springframework.ui.Model object1) throws Exception {
        randomnumber = String.valueOf(generatePin());
        object1.addAttribute("message", randomnumber);
        return "Password/adminpasswordreset";
    }
    String email = "";

    @RequestMapping(value = "/otpadmin", method = RequestMethod.GET)
    public String processRegisstratiosn(
            @RequestParam("email") String a,
            org.springframework.ui.Model object1) {
        object1.addAttribute("message", randomnumber);
        email = a;
        return "Password/otpadmin";
    }

    // -------------   otp validation -------------
    @RequestMapping(value = "/otp", method = RequestMethod.GET)
    public String viewRegistrsationn(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f
    ) {
        String otp = a + b + c + d + e + f;
        if (otp.equals(randomnumber)) {
            return "Password/resetpasswordadmin";
        } else {
            return "Password/otpadmin_1";
        }
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String procaessRegisstratiosn(
            @RequestParam("password") String a,
            @RequestParam("confirmation") String b,
            org.springframework.ui.Model object1) {
        int flag = 0;
        
        if (a.equals(b)) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                PreparedStatement stmt = con.prepareStatement("select * from admin");
                ResultSet rs = stmt.executeQuery();
                String ls = "";
                while (rs.next()) {
                    ls = rs.getString("email");
                    if (ls.equals(email)) {
                        flag = 1;
                    }
                }
            } catch (Exception K) {
                System.out.println(K.getMessage());
            }
            if (flag == 1) {

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    PreparedStatement stmt = con.prepareStatement("update admin set password=? where email=?");

                    stmt.setString(1, a);

                    stmt.setString(2, email);
                    stmt.executeUpdate();
                    return "adminlogin";
                } catch (Exception K) {
                    System.out.println(K.getMessage());
                }
            }

        } else {
            return "Password/passwordnotmatch";
        }
        return "home";
    }

    // password reset user 
    @RequestMapping(value = "/userpasswordreset", method = RequestMethod.GET)
    public String processsRegisstration(
            org.springframework.ui.Model object1) throws Exception {
        randomnumber = String.valueOf(generatePin());
        object1.addAttribute("message", randomnumber);
        return "Passworduser/userpasswordreset";
    }

    @RequestMapping(value = "/otpuser", method = RequestMethod.GET)
    public String processResgisstratiosn(
            @RequestParam("email") String a,
            org.springframework.ui.Model object1) {
        email = a;
        object1.addAttribute("message", randomnumber);
        return "Passworduser/otpuser";
    }

    // -------------   otp validation -------------
    @RequestMapping(value = "/otp_1", method = RequestMethod.GET)
    public String viewResgistrsationn(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f
    ) {
        String otp = a + b + c + d + e + f;
        if (otp.equals(randomnumber)) {
            return "Passworduser/resetpassworduser";
        } else {
            return "Passworduser/otpuser_1";
        }
    }

    @RequestMapping(value = "/login_1", method = RequestMethod.GET)
    public String proscaessRegisstratiosn(
            @RequestParam("password") String a,
            @RequestParam("confirmation") String b,
            org.springframework.ui.Model object1) {
        int flag = 0;
        if (a.equals(b)) {
//            return "home";
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                PreparedStatement stmt = con.prepareStatement("select * from user");
                ResultSet rs = stmt.executeQuery();
                String ls = "";
                while (rs.next()) {
                    ls = rs.getString("email");
                    if (ls.equals(email)) {
                        flag = 1;
                    }
                }

            } catch (Exception K) {
                System.out.println(K.getMessage());
            }
            if (flag == 1) {

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    PreparedStatement stmt = con.prepareStatement("update user set password=? where email=?");

                    stmt.setString(1, a);

                    stmt.setString(2, email);
                    stmt.executeUpdate();
                    return "userlogin";
                } catch (Exception K) {
                    System.out.println(K.getMessage());
                }

            }

        } else {
            return "Passworduser/passwordnotmatch";
        }
        return "Passworduser/passwordnotmatch";
    }

}
