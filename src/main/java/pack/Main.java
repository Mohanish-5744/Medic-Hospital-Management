package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Main {

    Connection con;

    // -------------   Loading page -------------
    @RequestMapping(value = "/index", method = RequestMethod.GET)

    public String Loadingpage() {
        Connection_to_mysql obj = new Connection_to_mysql();
        obj.setName();
        con=obj.con;
        return "index";
    }


    @RequestMapping(value = "/aboutus", method = RequestMethod.GET)
    public String Loadinsgpage() {
        return "Host/aboutus";
    }

    // -------------   Home page -------------
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String viewRegistrationn() {
        return "home";
    }

    // -------------   User page -------------
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String processRegistrationnn() {
        return "userlogin";

    }

    // -------------   admin page -------------
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String processRegistration() {

        return "adminlogin";
    }

    // -------------   Admin registeration  page redirect -------------
    @RequestMapping(value = "/adminregister", method = RequestMethod.GET)
    public String processRegistrtation() {

        return "adminregister";
    }

    @RequestMapping(value = "/userregister", method = RequestMethod.GET)
    public String processRegidstrtation() {

        return "userregistration";
    }

    @RequestMapping(value = "/payment", method = RequestMethod.GET)

    public String viewRegisstrationn() {
        return "paymentpage";
    }

    @RequestMapping(value = "/signout", method = RequestMethod.GET)

    public String vieweRegisstrationn() {
        return "home";
    }

    // -------------   user registeration page redirect -------------
    @RequestMapping(value = "/registeradmin", method = RequestMethod.GET)
    public String proacessRegistrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from appoinment");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("contact"));
                l5.add(rs.getString("email"));
                l6.add(rs.getString("date"));
                l7.add(rs.getString("address"));
                l8.add(rs.getString("lab"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "outadmin";
    }

    @RequestMapping(value = "/registeruser", method = RequestMethod.GET)
    public String proacesssRegistrtation(Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        return "outuser";
    }

    // -------------   user registeration page redirect -------------
    @RequestMapping(value = "/facilities", method = RequestMethod.GET)
    public String proacessRegistrtaation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "facilities";
    }

    // -------------   user registeration page redirect -------------
    @RequestMapping(value = "/facilitiesuser", method = RequestMethod.GET)
    public String proacessRegistrvtaation(Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        return "facilitiesuser";
    }

    @RequestMapping(value = "/appoinment", method = RequestMethod.GET)
    public String processRehgistrationnn(Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from appoinment where firstname=? and lastname=?");
            stmt.setString(1, str);
            stmt.setString(2, userlastname);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("contact"));
                l5.add(rs.getString("email"));
                l6.add(rs.getString("date"));
                l7.add(rs.getString("address"));
                l8.add(rs.getString("lab"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
//        object1.addAttribute("flag", 0);
        return "appoinment";

    }

    @RequestMapping(value = "/host", method = RequestMethod.GET)
    public String processRdehgistrationnn(Model object1) {
        object1.addAttribute("username", "Admin");
        object1.addAttribute("userid", "1");
        return "Host/hostlogin";

    }

    

    
    // -------------   user registeration page -------------
    @RequestMapping(value = "/registerformuser", method = RequestMethod.POST)
    public String Handleform(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
            @RequestParam("h") String h,
            @RequestParam("i") String i,
            @RequestParam("j") String j,
            @RequestParam("k") String k,
            @RequestParam("l") String l,
            @RequestParam("m") String m,
            @RequestParam("n") String n,
            @RequestParam("p") String p,
            org.springframework.ui.Model object1) {

        System.out.println("i am contact");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user");
            ResultSet rs = stmt.executeQuery();

            String ls = "";

            while (rs.next()) {

                ls = rs.getString("id");

                if (ls.equals(e)) {
                    return "DuplicateEnteryadmin";
                }
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setInt(5, Integer.parseInt(e));
            stmt.setInt(6, Integer.parseInt(f));
            stmt.setString(7, g);
            stmt.setInt(8, Integer.parseInt(h));
            stmt.setInt(9, Integer.parseInt(i));
            stmt.setString(10, j);
            stmt.setString(11, k);
            stmt.setString(12, l);
            stmt.setString(13, m);
            stmt.setString(14, n);
            stmt.setInt(15, Integer.parseInt(p));

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("firstname", a);
        object1.addAttribute("lastname", b);
        object1.addAttribute("address", c);
        object1.addAttribute("password", d);
        object1.addAttribute("id", e);
        object1.addAttribute("age", f);
        object1.addAttribute("dateofbirth", g);
        object1.addAttribute("weight", h);
        object1.addAttribute("height", i);
        object1.addAttribute("adharnumber", j);
        object1.addAttribute("medicalhistory", k);
        object1.addAttribute("gender", l);
        object1.addAttribute("mobailno", m);
        object1.addAttribute("email", n);
        object1.addAttribute("pincode", p);
        return "userregistrationsucess";
    }
    String str = "";
    String iduser = "";
    String idadmin = "";
    String userlastname = "";
    String adminlastname = "";

    // ------------------ user login page -------------------
    @RequestMapping(value = "/loginformuser", method = RequestMethod.POST)
    public String processRegistration(@RequestParam("a") String z,
            @RequestParam("b") String y, @RequestParam("c") String a,
            org.springframework.ui.Model object1) {

        // implement your own registration logic here...
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where firstname=? and email=? or password=? and firstname=?");
            stmt.setString(1, z);
            stmt.setString(2, y);
            stmt.setString(3, a);
            stmt.setString(4, z);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "", s = "", id = "", ls = "";
            while (rs.next()) {
                m = rs.getString("firstname");
                l = rs.getString("email");
                s = rs.getString("password");
                id = rs.getString("id");
                ls = rs.getString("lastname");
                object1.addAttribute("username", m);

            }
            if (m.equals(z) && l.equals(y) && s.equals(a)) {
                str = m;
                iduser = id;
                userlastname = ls;
                object1.addAttribute("userid", iduser);
                object1.addAttribute("username", str);
                object1.addAttribute("userlastname", userlastname);
                return "outuser";
            } else {
                return "userlogininvalid";
            }
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "error";
    }

//    -----------------  admin registeration form ------------------
    @RequestMapping(value = "/registerformadmin", method = RequestMethod.POST)
    public String Handlefogrm(@RequestParam("a") String f,
            @RequestParam("b") String y,
            @RequestParam("c") String z,
            @RequestParam("d") String h,
            @RequestParam("e") String i,
            @RequestParam("f") String j,
            @RequestParam("g") String k,
            @RequestParam("t") String t,
            @RequestParam("q") String q,
            @RequestParam("bg") String bg,
            org.springframework.ui.Model object1) {
        int flag = 0;
        System.out.println("i am contact");
        object1.addAttribute("firstname", f);
        object1.addAttribute("lastname", y);
        object1.addAttribute("address", z);
        object1.addAttribute("mobailno", h);
        object1.addAttribute("email", i);
        object1.addAttribute("password", j);
        object1.addAttribute("id", k);
        object1.addAttribute("dateofbirth", t);
        object1.addAttribute("gender", q);
        object1.addAttribute("role", bg);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            PreparedStatement stmt = con.prepareStatement("select * from admin");
            ResultSet rs = stmt.executeQuery();
            String m = "";
            while (rs.next()) {
                m = rs.getString("id");
                if (m.equals(k)) {
                    return "DuplicateEnteryadmin";
                }
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("INSERT INTO admin VALUES(?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1, f);
            stmt.setString(2, y);//1 specifies the first parameter in the query  
            stmt.setString(3, z);
            stmt.setString(4, h);
            stmt.setString(5, i);
            stmt.setString(6, j);
            stmt.setInt(7, Integer.parseInt(k));
            stmt.setString(8, t);
            stmt.setString(9, q);
            stmt.setString(10, bg);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "adminregistrationsucess";
    }

    String s23 = "";

    // delete database using id admin
    @RequestMapping(value = "/deleteformadmindoctor", method = RequestMethod.GET)
    public String Handleformmqm(@RequestParam("c") String x, Model object1) {

        object1.addAttribute("msg", "record DELETED Successfully");
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(x));
            String l = "", m = "";
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l = rs.getString("id");
                m = rs.getString("role");
            }
            if (l.equals(x) && m.equals("Doctor")) {
                stmt = con.prepareStatement("delete from admin where id=?");
                stmt.setInt(1, Integer.parseInt(x));
                stmt.executeUpdate();
            } else {
                return "error";
            }

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where role=?");
            String z = "doctor";
            stmt.setString(1, z);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
                l12.add(rs.getString("address"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayformalldoctor";
    }

    // delete database using id admin
    @RequestMapping(value = "/deleteformadminsatff", method = RequestMethod.GET)
    public String Handleformamqm(@RequestParam("c") String x, Model object1) {

        object1.addAttribute("msg", "record DELETED Successfully ");
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(x));
            String l = "", m = "";
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l = rs.getString("id");
                m = rs.getString("role");

            }
            if (l.equals(x) && m.equals("Staff")) {
                stmt = con.prepareStatement("delete from admin where id=?");
                stmt.setInt(1, Integer.parseInt(x));
                stmt.executeUpdate();

            } else {
                return "error";
            }

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where role=?");
            String z = "staff";
            stmt.setString(1, z);

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
//            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
//            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
//            List<String> l10 = new ArrayList<String>();
//            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
//            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
//                l4.add(rs.getString("age"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
//                l8.add(rs.getString("adharnumber"));
                l9.add(rs.getString("email"));
//                l10.add(rs.getString("weight"));
//                l11.add(rs.getString("height"));
                l12.add(rs.getString("address"));
//                l13.add(rs.getString("pincode"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);

//            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
//            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
//            object1.addAttribute("l10", l10);
//            object1.addAttribute("l11", l11);
            object1.addAttribute("l12", l12);
//            object1.addAttribute("l13", l13);

            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);
//          return "error";
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displayformallstaff";
    }

    String s21 = "";
    String s22 = "";

    @RequestMapping(value = "/displayformalluser", method = RequestMethod.GET)
    public String Handleforrm(Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from user");
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l10 = new ArrayList<String>();
            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("age"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l8.add(rs.getString("adharnumber"));
                l9.add(rs.getString("email"));
                l10.add(rs.getString("weight"));
                l11.add(rs.getString("height"));
                l12.add(rs.getString("address"));
                l13.add(rs.getString("pincode"));
                l14.add(rs.getString("medicalhistory"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l10", l10);
            object1.addAttribute("l11", l11);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l13", l13);
            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        return "displayuserallinfo";
    }

    // delete database using id admin
    @RequestMapping(value = "/deleteformuser", method = RequestMethod.GET)
    public String Hanadleformamqm(@RequestParam("c") String x, Model object1) {

        object1.addAttribute("msg", "record DELETED Successfully ");
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(x));
            String l = "", m = "";
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l = rs.getString("id");

            }
            if (l.equals(x)) {
                stmt = con.prepareStatement("delete from user where id=?");
                stmt.setInt(1, Integer.parseInt(x));
                stmt.executeUpdate();
            } else {
                return "error";
            }
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from user");
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l10 = new ArrayList<String>();
            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("age"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l8.add(rs.getString("adharnumber"));
                l9.add(rs.getString("email"));
                l10.add(rs.getString("weight"));
                l11.add(rs.getString("height"));
                l12.add(rs.getString("address"));
                l13.add(rs.getString("pincode"));
                l14.add(rs.getString("medicalhistory"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l10", l10);
            object1.addAttribute("l11", l11);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l13", l13);
            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        return "displayuserallinfo";
    }

//.................... DISPLAY doctors infromation ..................
    @RequestMapping(value = "/displayformalldoctor", method = RequestMethod.GET)
    public String Handlesforqrm(Model object1) {

        // implement your own registration logic here...
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            PreparedStatement stmt = con.prepareStatement("select * from admin where role=?");
            String z = "doctor";
            stmt.setString(1, z);

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
                l12.add(rs.getString("address"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);

//          return "error";
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayformalldoctor";

    }

    @RequestMapping(value = "/searchdoctor", method = RequestMethod.GET)
    public String Handslesforsqrm(@RequestParam("a") String z,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where firstname=? and role=?");
            stmt.setString(1, z);
            stmt.setString(2, "doctor");
            List<String> l1 = new ArrayList<>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
                l12.add(rs.getString("address"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l14", l14);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "displayformalldoctor";
    }

    @RequestMapping(value = "/searchstaff", method = RequestMethod.GET)
    public String Handslesfosrsqrm(@RequestParam("a") String z,
            Model object1) {

        // implement your own registration logic here...
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//step2 create  the connection object  

            PreparedStatement stmt = con.prepareStatement("select * from admin where firstname=? and role=?");
            stmt.setString(1, z);
            stmt.setString(2, "staff");

//            stmt.setString(2, y);
            List<String> l1 = new ArrayList<>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
//            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
//            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
//            List<String> l10 = new ArrayList<String>();
//            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
//            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
//                l4.add(rs.getString("age"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
//                l8.add(rs.getString("adharnumber"));
                l9.add(rs.getString("email"));
//                l10.add(rs.getString("weight"));
//                l11.add(rs.getString("height"));
                l12.add(rs.getString("address"));
//                l13.add(rs.getString("pincode"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);

//            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
//            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
//            object1.addAttribute("l10", l10);
//            object1.addAttribute("l11", l11);
            object1.addAttribute("l12", l12);
//            object1.addAttribute("l13", l13);

            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);
//          return "error";
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayformallstaff";

    }

    @RequestMapping(value = "/searchuser", method = RequestMethod.GET)
    public String Hwandslesfosrsqrm(@RequestParam("a") String z,
            Model object1) {

        // implement your own registration logic here...
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//step2 create  the connection object  

            PreparedStatement stmt = con.prepareStatement("select * from user where firstname=?");
            stmt.setString(1, z);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l10 = new ArrayList<String>();
            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("age"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l8.add(rs.getString("adharnumber"));
                l9.add(rs.getString("email"));
                l10.add(rs.getString("weight"));
                l11.add(rs.getString("height"));
                l12.add(rs.getString("address"));
                l13.add(rs.getString("pincode"));
                l14.add(rs.getString("medicalhistory"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l10", l10);
            object1.addAttribute("l11", l11);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l13", l13);
            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayuserallinfo";

    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/displayformallstaff", method = RequestMethod.GET)
    public String Hansdlesforqrm(
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            PreparedStatement stmt = con.prepareStatement("select * from admin where role=?");
            String z = "staff";
            stmt.setString(1, z);

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
//            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
//            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
//            List<String> l10 = new ArrayList<String>();
//            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
//            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
//                l4.add(rs.getString("age"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
//                l8.add(rs.getString("adharnumber"));
                l9.add(rs.getString("email"));
//                l10.add(rs.getString("weight"));
//                l11.add(rs.getString("height"));
                l12.add(rs.getString("address"));
//                l13.add(rs.getString("pincode"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);

//            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
//            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
//            object1.addAttribute("l10", l10);
//            object1.addAttribute("l11", l11);
            object1.addAttribute("l12", l12);
//            object1.addAttribute("l13", l13);

            object1.addAttribute("l14", l14);
            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);
//          return "error";
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displayformallstaff";

    }
    //....................Admin login..................
    @RequestMapping(value = "/loginformadmin", method = RequestMethod.POST)
    public String processRegistratieon(@RequestParam("a") String z,
            @RequestParam("b") String y, @RequestParam("c") String a,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from appoinment");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("contact"));
                l5.add(rs.getString("email"));
                l6.add(rs.getString("date"));
                l7.add(rs.getString("address"));
                l8.add(rs.getString("lab"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        // implement your own registration logic here...
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//step2 create  the connection object  

            PreparedStatement stmt = con.prepareStatement("select * from admin where firstname=? and email=? or password=? and firstname=?;");
            stmt.setString(1, z);
            stmt.setString(2, y);
            stmt.setString(3, a);
            stmt.setString(4, z);

//            stmt.setString(3, a);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "", s = "", id = "", lastname = "";
            while (rs.next()) {
                m = rs.getString("firstname");
                l = rs.getString("email");
                s = rs.getString("password");
                id = rs.getString("id");
                lastname = rs.getString("lastname");
                object1.addAttribute("adminname", m);
                object1.addAttribute("adminid", id);
                object1.addAttribute("lastname", lastname);

            }
            if (m.equals(z) && l.equals(y) && s.equals(a)) {
                s21 = m;
                idadmin = id;
                adminlastname = lastname;
                object1.addAttribute("userid", iduser);
                object1.addAttribute("username", str);
                object1.addAttribute("userlastname", userlastname);
                return "outadmin";
            } else {
                return "adminlogininvalid";
            }
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "error";
    }

    // -------------   laboratory management -------------
    @RequestMapping(value = "/laboratory", method = RequestMethod.GET)
    public String processRsegistrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "laboratory";
    }

    @RequestMapping(value = "/displaylaboratories", method = RequestMethod.GET)
    public String Hanqsdlesforqrm(
            Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("lab_name"));
                l3.add(rs.getString("floor"));
                l4.add(rs.getString("room_no"));
                l5.add(rs.getString("doctors"));
                l6.add(rs.getString("assistant"));
                l7.add(rs.getString("salary_doctor"));
                l8.add(rs.getString("salary_assistant"));
                l9.add(rs.getString("cost_for_user"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);

        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displaylaboratories";

    }

    @RequestMapping(value = "/displaylaboratories_1", method = RequestMethod.GET)
    public String Hanqshdlesforqrm(
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("lab_name"));
                l3.add(rs.getString("floor"));
                l4.add(rs.getString("room_no"));
                l5.add(rs.getString("doctors"));
                l6.add(rs.getString("assistant"));
                l9.add(rs.getString("cost_for_user"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l9", l9);
            object1.addAttribute("userid", iduser);
            object1.addAttribute("username", str);
            object1.addAttribute("userlastname", userlastname);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displaylaboratories_1";

    }

    // -------------   laboratory management -------------
    @RequestMapping(value = "/medicines", method = RequestMethod.GET)
    public String processRsegsistrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "medicines";
    }

    @RequestMapping(value = "/displaymedicines", method = RequestMethod.GET)
    public String Hanqsdlessforqrm(
            Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("type_of_medicines_name"));
                l3.add(rs.getString("medicine_name"));
                l4.add(rs.getString("use_of_medicine"));
                l5.add(rs.getString("total_available"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);

            object1.addAttribute("adminname", s21);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displaymedicines";

    }

    @RequestMapping(value = "/contactus", method = RequestMethod.GET)
    public String processRsegistratation(Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        return "contactus";
    }

    @RequestMapping(value = "/contacttohost", method = RequestMethod.GET)
    public String processRsehgistratation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "contacttohost";
    }

    @RequestMapping(value = "/laboratoryregisteration", method = RequestMethod.GET)
    public String processRseagsistrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);;
        return "laboratoryregisteration";
    }

    //    -----------------  laboratory registeration form ------------------
    @RequestMapping(value = "/registerformlaboratory", method = RequestMethod.POST)
    public String Handlewfogrm(@RequestParam("z") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
            @RequestParam("h") String h,
            @RequestParam("i") String i,
            org.springframework.ui.Model object1) {
        object1.addAttribute("serial_no", a);
        object1.addAttribute("lab_name", b);
        object1.addAttribute("floor", c);
        object1.addAttribute("room_no", d);
        object1.addAttribute("doctors", e);
        object1.addAttribute("assistant", f);
        object1.addAttribute("salary_doctor", g);
        object1.addAttribute("salary_assistant", h);
        object1.addAttribute("cost_for_user", i);
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories");
            ResultSet rs = stmt.executeQuery();
            String m = "";
            while (rs.next()) {
                m = rs.getString("serial_no");
                if (m.equals(a)) {
                    return "DuplicateEnteryadmin";
                }
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("INSERT INTO laboratories VALUES(?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, Integer.parseInt(a));
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setInt(3, Integer.parseInt(c));
            stmt.setInt(4, Integer.parseInt(d));
            stmt.setInt(5, Integer.parseInt(e));
            stmt.setInt(6, Integer.parseInt(f));
            stmt.setInt(7, Integer.parseInt(g));
            stmt.setInt(8, Integer.parseInt(h));
            stmt.setInt(9, Integer.parseInt(i));

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "laboratoryregisterationsucessful";
    }

    @RequestMapping(value = "/deleteformlaboratories", method = RequestMethod.GET)
    public String Haandleformmqm(@RequestParam("c") String x, Model object1) {

        object1.addAttribute("msg", "record DELETED Successfully");
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(x));
            String l = "";
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l = rs.getString("serial_no");
            }
            if (l.equals(x)) {
                stmt = con.prepareStatement("delete from laboratories where serial_no=?");
                stmt.setInt(1, Integer.parseInt(x));
                stmt.executeUpdate();
            } else {
                return "error";
            }

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("lab_name"));
                l3.add(rs.getString("floor"));
                l4.add(rs.getString("room_no"));
                l5.add(rs.getString("doctors"));
                l6.add(rs.getString("assistant"));
                l7.add(rs.getString("salary_doctor"));
                l8.add(rs.getString("salary_assistant"));
                l9.add(rs.getString("cost_for_user"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);
            object1.addAttribute("adminname", s21);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displaylaboratories";

    }

    @RequestMapping(value = "/updatelaboratory", method = RequestMethod.GET)
    public String processsRseagsistrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatelaboratory";
    }
    String s24 = "";

    //    -----------------  laboratory updation form ------------------
    @RequestMapping(value = "/searchlaboratorysingle", method = RequestMethod.GET)
    public String Handlewfogrm(@RequestParam("a") String a,
            org.springframework.ui.Model object1) {
//        object1.addAttribute("serial_no", a);
        s24 = a;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(a));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(a)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatelaboratory";
    }

    @RequestMapping(value = "/medicinesregisteration", method = RequestMethod.GET)
    public String processRsegsiastrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "medicinesregisteration";
    }

    //    -----------------  laboratory registeration form ------------------
    @RequestMapping(value = "/registerformmedicines", method = RequestMethod.POST)
    public String Handlsewfogrm(@RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            org.springframework.ui.Model object1) {

        object1.addAttribute("serial_no", a);
        object1.addAttribute("type_of_medicines_name", b);
        object1.addAttribute("medicine_name", c);
        object1.addAttribute("use_of_medicine", d);
        object1.addAttribute("total_available", e);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines");
            ResultSet rs = stmt.executeQuery();
            String m = "";
            while (rs.next()) {
                m = rs.getString("serial_no");
                if (m.equals(a)) {
                    return "DuplicateEnteryadmin";
                }
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("INSERT INTO medicines VALUES(?,?,?,?,?)");
            stmt.setInt(1, Integer.parseInt(a));
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setInt(5, Integer.parseInt(e));

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "medicinesregisterationsucessful";
    }

    @RequestMapping(value = "/deleteformmedicines", method = RequestMethod.GET)
    public String Haandlesformmqm(@RequestParam("c") String x, Model object1) {

        object1.addAttribute("msg", "record DELETED Successfully");
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("select * from medicines where serial_no=?");
            stmt.setInt(1, Integer.parseInt(x));
            String l = "";
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l = rs.getString("serial_no");
            }
            if (l.equals(x)) {
                stmt = con.prepareStatement("delete from medicines where serial_no=?");
                stmt.setInt(1, Integer.parseInt(x));
                stmt.executeUpdate();
            } else {
                return "error";
            }

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines");

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("type_of_medicines_name"));
                l3.add(rs.getString("medicine_name"));
                l4.add(rs.getString("use_of_medicine"));
                l5.add(rs.getString("total_available"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);

            object1.addAttribute("adminname", s21);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "displaymedicines";
    }

    @RequestMapping(value = "/searchmedicine", method = RequestMethod.GET)
    public String Handslesfossrssqrm(@RequestParam("a") String z,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines where medicine_name=?");
            stmt.setString(1, z);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("type_of_medicines_name"));
                l3.add(rs.getString("medicine_name"));
                l4.add(rs.getString("use_of_medicine"));
                l5.add(rs.getString("total_available"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);

            object1.addAttribute("adminname", s21);
            object1.addAttribute("lastname", adminlastname);
            object1.addAttribute("adminid", idadmin);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displaymedicines";
    }

    @RequestMapping(value = "/searchlaboratory", method = RequestMethod.GET)
    public String Handslesfosrssqrm(@RequestParam("a") String z,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where lab_name=?");
            stmt.setString(1, z);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("lab_name"));
                l3.add(rs.getString("floor"));
                l4.add(rs.getString("room_no"));
                l5.add(rs.getString("doctors"));
                l6.add(rs.getString("assistant"));
                l7.add(rs.getString("salary_doctor"));
                l8.add(rs.getString("salary_assistant"));
                l9.add(rs.getString("cost_for_user"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);
            object1.addAttribute("l9", l9);

            object1.addAttribute("adminname", s21);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "displaylaboratories";
    }

//    update laboratory
    @RequestMapping("/updatelaboratoryname")
    public String shoqwformm(@RequestParam("a") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set lab_name=? where serial_no=?");

            stmt.setString(1, x);
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratoryfloor")
    public String soqwformm(@RequestParam("b") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set floor=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratoryroomno")
    public String soqwfaormm(@RequestParam("c") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set room_no=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratorydoctorcount")
    public String soeqwfaormm(@RequestParam("d") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set doctors=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratoryassistantno")
    public String soeqwfaormsm(@RequestParam("e") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set assistant=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratorydoctorsalary")
    public String soeqwfaormgsm(@RequestParam("f") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set salary_doctor=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratoryassistantsalary")
    public String soeqwfaormgesm(@RequestParam("g") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set salary_assistant=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    //    update laboratory
    @RequestMapping("/updatelaboratorycostforuser")
    public String soeqwfaorsmgesm(@RequestParam("h") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("update laboratories set cost_for_user=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));
            stmt.setInt(2, Integer.parseInt(s24));
//                return "error";
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s24));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("lab_name");
                d = rs.getString("floor");
                e = rs.getString("room_no");
                f = rs.getString("doctors");
                g = rs.getString("assistant");
                h = rs.getString("salary_doctor");
                i = rs.getString("salary_assistant");
                j = rs.getString("cost_for_user");
            }
            if (b.equals(s24)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("lab_name", c);
                object1.addAttribute("floor", d);
                object1.addAttribute("room_no", e);
                object1.addAttribute("doctors", f);
                object1.addAttribute("assistant", g);
                object1.addAttribute("salary_doctor", h);
                object1.addAttribute("salary_assistant", i);
                object1.addAttribute("cost_for_user", j);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updatelaboratory";
    }

    @RequestMapping(value = "/updatemedicines", method = RequestMethod.GET)
    public String processsRsegsistrtation(Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatemedicines";
    }
    // code for update medicines
    String s25 = "";

    //    -----------------  laboratory updation form ------------------
    @RequestMapping(value = "/searchmedicinessingle", method = RequestMethod.GET)
    public String Handlewogrm(@RequestParam("a") String a,
            org.springframework.ui.Model object1) {
//        object1.addAttribute("serial_no", a);
        s25 = a;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines where serial_no=?");
            stmt.setInt(1, Integer.parseInt(a));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("type_of_medicines_name");
                d = rs.getString("medicine_name");
                e = rs.getString("use_of_medicine");
                f = rs.getString("total_available");
            }
            if (b.equals(a)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("type_of_medicines_name", c);
                object1.addAttribute("medicine_name", d);
                object1.addAttribute("use_of_medicine", e);
                object1.addAttribute("total_available", f);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatemedicines";
    }

    //    update laboratory
    @RequestMapping("/updatemedicinestypeofmedicinesname")
    public String soeqwfarsmgesm(@RequestParam("a") String x, Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update medicines set type_of_medicines_name=? where serial_no=?");

            stmt.setString(1, x);
            stmt.setInt(2, Integer.parseInt(s25));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s25));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("type_of_medicines_name");
                d = rs.getString("medicine_name");
                e = rs.getString("use_of_medicine");
                f = rs.getString("total_available");
            }
            if (b.equals(s25)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("type_of_medicines_name", c);
                object1.addAttribute("medicine_name", d);
                object1.addAttribute("use_of_medicine", e);
                object1.addAttribute("total_available", f);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatemedicines";
    }

    //    update laboratory
    @RequestMapping("/updatemedicinesmedicinename")
    public String soeqfarsmgesm(@RequestParam("b") String x, Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update medicines set medicine_name=? where serial_no=?");

            stmt.setString(1, x);
            stmt.setInt(2, Integer.parseInt(s25));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s25));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("type_of_medicines_name");
                d = rs.getString("medicine_name");
                e = rs.getString("use_of_medicine");
                f = rs.getString("total_available");
            }
            if (b.equals(s25)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("type_of_medicines_name", c);
                object1.addAttribute("medicine_name", d);
                object1.addAttribute("use_of_medicine", e);
                object1.addAttribute("total_available", f);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatemedicines";
    }

    //    update laboratory
    @RequestMapping("/updatemedicinesuseofmedicine")
    public String soeqwfarsmesm(@RequestParam("c") String x, Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update medicines set use_of_medicine=? where serial_no=?");

            stmt.setString(1, x);
            stmt.setInt(2, Integer.parseInt(s25));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s25));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("type_of_medicines_name");
                d = rs.getString("medicine_name");
                e = rs.getString("use_of_medicine");
                f = rs.getString("total_available");
            }
            if (b.equals(s25)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("type_of_medicines_name", c);
                object1.addAttribute("medicine_name", d);
                object1.addAttribute("use_of_medicine", e);
                object1.addAttribute("total_available", f);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatemedicines";
    }

    //    update laboratory
    @RequestMapping("/updatemedicinestotalavailable")
    public String soeqwfasmgesm(@RequestParam("d") String x, Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update medicines set total_available=? where serial_no=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(s25));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from medicines where serial_no=?");
            stmt.setInt(1, Integer.parseInt(s25));

            ResultSet rs = stmt.executeQuery();
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            while (rs.next()) {
                b = rs.getString("serial_no");
                c = rs.getString("type_of_medicines_name");
                d = rs.getString("medicine_name");
                e = rs.getString("use_of_medicine");
                f = rs.getString("total_available");
            }
            if (b.equals(s25)) {
                object1.addAttribute("serial_no", b);
                object1.addAttribute("type_of_medicines_name", c);
                object1.addAttribute("medicine_name", d);
                object1.addAttribute("use_of_medicine", e);
                object1.addAttribute("total_available", f);
            } else {
                return "error";
            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        return "updatemedicines";
    }

    @RequestMapping(value = "/updateuser", method = RequestMethod.GET)
    public String processsReagsistrtation(Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateuserfirstname", method = RequestMethod.GET)
    public String processseagsistrtation(@RequestParam("a") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("userlastname", userlastname);
        object1.addAttribute("username", x);

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set firstname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            str = x;
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    // 
    @RequestMapping(value = "/updateuserlastname", method = RequestMethod.GET)
    public String processseagistrtation(@RequestParam("b") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", x);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set lastname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    //
    @RequestMapping(value = "/updateuserbirthdate", method = RequestMethod.GET)
    public String processsagistrtation(@RequestParam("c") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set dateofbirth=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    //
    @RequestMapping(value = "/updateuseremail", method = RequestMethod.GET)
    public String processagistrtation(@RequestParam("d") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set email=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    //
    @RequestMapping(value = "/updateusermobailno", method = RequestMethod.GET)
    public String procesagistrtation(@RequestParam("e") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set mobailno=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    //
    @RequestMapping(value = "/updateuseraddress", method = RequestMethod.GET)
    public String procesagistrtaion(@RequestParam("f") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set address=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateuserpincode", method = RequestMethod.GET)
    public String procesagistrtaio(@RequestParam("g") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set pincode=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateuserage", method = RequestMethod.GET)
    public String procesagisrtaio(@RequestParam("h") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set age=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateuserheight", method = RequestMethod.GET)
    public String procesagisstrtaio(@RequestParam("i") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set height=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateuserweight", method = RequestMethod.GET)
    public String procesagistrtaiso(@RequestParam("j") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set weight=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateuserpassword", method = RequestMethod.GET)
    public String procesagistsrtaiso(@RequestParam("k") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set password=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateusermedicalhistory", method = RequestMethod.GET)
    public String procesageistrtaio(@RequestParam("l") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set medicalhistory=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    //
    @RequestMapping(value = "/updateuseradharnumber", method = RequestMethod.GET)
    public String procesageistsrtaio(@RequestParam("m") String x, Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set adharnumber=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateuser";
    }

    @RequestMapping(value = "/updateadmin", method = RequestMethod.GET)
    public String processssReagsistrtation(Model object1) {
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    @RequestMapping(value = "/updateadminfirstname", method = RequestMethod.GET)
    public String procaessseagsistrtation(@RequestParam("a") String x, Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set firstname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            str = x;
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", x);
        s21 = x;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    // 
    @RequestMapping(value = "/updateadminlastname", method = RequestMethod.GET)
    public String processseagistrtatuion(@RequestParam("b") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set lastname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);
        adminlastname = x;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminbirthdate", method = RequestMethod.GET)
    public String processsagistrtuation(@RequestParam("c") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set dateofbirth=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminemail", method = RequestMethod.GET)
    public String processagistrtatiqon(@RequestParam("d") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set email=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminmobailno", method = RequestMethod.GET)
    public String procesagistrtatiown(@RequestParam("e") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set mobailno=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminaddress", method = RequestMethod.GET)
    public String procesagistwrtaion(@RequestParam("f") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set address=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    @RequestMapping(value = "/updateadminpincode", method = RequestMethod.GET)
    public String procesagisstsrtaio(@RequestParam("g") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set pincode=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    @RequestMapping(value = "/updateadminpassword", method = RequestMethod.GET)
    public String procesagisstsrtaiso(@RequestParam("k") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set password=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    @RequestMapping(value = "/updateadminrole", method = RequestMethod.GET)
    public String proceqsagisstsrtaiso(@RequestParam("ls") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set role=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("adminname", s21);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "updateadmin";
    }

    @RequestMapping(value = "/displayformalldoctor_1", method = RequestMethod.GET)
    public String Handlwesforqrm(Model object1) {
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where role=?");
            String z = "doctor";
            stmt.setString(1, z);

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
                l12.add(rs.getString("address"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l12", l12);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayformalldoctor_1";

    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/displayformallstaff_1", method = RequestMethod.GET)
    public String Hantsdlesforqrm(
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where role=?");
            String z = "staff";
            stmt.setString(1, z);

            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("userid", iduser);
            object1.addAttribute("username", str);
            object1.addAttribute("userlastname", userlastname);
//          return "error";
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displayformallstaff_1";

    }
    int task = 1;
    int flag = 1;

    @RequestMapping(value = "/task", method = RequestMethod.GET)
    public String vieweRegistrationn(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            org.springframework.ui.Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems where subject=? and email=?");
            stmt.setString(1, c);
            stmt.setString(2, b);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "";
            while (rs.next()) {
                l = rs.getString("subject");
                m = rs.getString("email");
            }

            if (l.equals(c) && m.equals(b)) {
                return "error";
            }
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("INSERT INTO userproblems (name,email,subject,message) VALUES(?,?,?,?)");
            stmt.setString(1, a);
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        return "contactus";

    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/displaytask", method = RequestMethod.GET)
    public String Hantsdlesfjorqrm(
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems where id=?");
            stmt.setInt(1, 1);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        int count = 1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems");
            ResultSet rs = stmt.executeQuery();
            int l;
            while (rs.next()) {

                l = rs.getInt("id");
                stmt = con.prepareStatement("update userproblems set id=? where id=?");
                stmt.setInt(1, count);
                count++;
                stmt.setInt(2, l);
                stmt.executeUpdate();
            }
            task = count - 1;
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);

        return "displaytask";
    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/nextproblem", method = RequestMethod.GET)
    public String Hantfsdlesfjorqrm(
            Model object1) {
        if (flag == task) {
            flag = 1;
        } else {
            flag++;
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems where id=?");
            stmt.setInt(1, flag);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "displaytask";
    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/previousproblem", method = RequestMethod.GET)
    public String Hantsdlgesfjorqrm(
            Model object1) {
        if (flag == 1) {
            flag = task;
        } else {
            flag--;
        }
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
//        flag--;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems where id=?");
            stmt.setInt(1, flag);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "displaytask";
    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/deleteproblem", method = RequestMethod.GET)
    public String Hanytsdlgesfjorqrm(
            Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("lastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("delete from userproblems where id=?");
            stmt.setInt(1, flag);
            stmt.executeUpdate();

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        flag--;
        int count = 1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems");
            ResultSet rs = stmt.executeQuery();
            int l;
            while (rs.next()) {

                l = rs.getInt("id");
                stmt = con.prepareStatement("update userproblems set id=? where id=?");
                stmt.setInt(1, count);
                count++;
                stmt.setInt(2, l);
                stmt.executeUpdate();
            }
            task = count - 1;
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from userproblems where id=?");
            stmt.setInt(1, flag);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "displaytask";
    }

    @RequestMapping(value = "/searchdoctor_1", method = RequestMethod.GET)
    public String Handslefsforsqrm(@RequestParam("a") String z,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where firstname=? and role=?");
            stmt.setString(1, z);
            stmt.setString(2, "doctor");
            List<String> l1 = new ArrayList<>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("userid", iduser);
            object1.addAttribute("username", str);
            object1.addAttribute("userlastname", userlastname);
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayformalldoctor_1";
    }

    @RequestMapping(value = "/searchstaff_1", method = RequestMethod.GET)
    public String Handslesfofsrsqrm(@RequestParam("a") String z,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where firstname=? and role=?");
            stmt.setString(1, z);
            stmt.setString(2, "staff");
            List<String> l1 = new ArrayList<>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("userid", iduser);
            object1.addAttribute("username", str);
            object1.addAttribute("userlastname", userlastname);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "displayformallstaff_1";

    }

    @RequestMapping(value = "/searchlaboratory_1", method = RequestMethod.GET)
    public String Handslefdsfosrssqrm(@RequestParam("a") String z,
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from laboratories where lab_name=?");
            stmt.setString(1, z);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("serial_no"));
                l2.add(rs.getString("lab_name"));
                l3.add(rs.getString("floor"));
                l4.add(rs.getString("room_no"));
                l5.add(rs.getString("doctors"));
                l6.add(rs.getString("assistant"));
                l9.add(rs.getString("cost_for_user"));

            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l9", l9);
            object1.addAttribute("userid", iduser);
            object1.addAttribute("username", str);
            object1.addAttribute("userlastname", userlastname);
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displaylaboratories_1";
    }

    // ------------------ user login page -------------------
    @RequestMapping(value = "/loginformhost", method = RequestMethod.POST)
    public String processRegistratdion(@RequestParam("a") String z,
            @RequestParam("b") String y, @RequestParam("c") String a,
            org.springframework.ui.Model object1) {

        if (z.equals("Admin") && y.equals("Admin@123") && a.equals("Admin")) {
            object1.addAttribute("hostname", "Admin");
            object1.addAttribute("hostid", "1");
            return "Host/outhost";
        } else {
            return "Host/hostlogininvalid";
        }
    }

    // ------------------ user login page -------------------
    @RequestMapping(value = "/loginformhostredirect", method = RequestMethod.GET)
    public String processResgistratdion(
            org.springframework.ui.Model object1) {
        object1.addAttribute("hostname", "Admin");
        object1.addAttribute("hostid", "1");
        return "Host/outhost";
    }

    int task_1 = 1;
    int flag_1 = 1;

    @RequestMapping(value = "/task_1", method = RequestMethod.GET)
    public String viewesRegistrationn(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            org.springframework.ui.Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems where subject=? and email=?");
            stmt.setString(1, c);
            stmt.setString(2, b);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "";
            while (rs.next()) {
                l = rs.getString("subject");
                m = rs.getString("email");
            }

            if (l.equals(c) && m.equals(b)) {
                return "error";
            }
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("INSERT INTO adminproblems (name,email,subject,message) VALUES(?,?,?,?)");
            stmt.setString(1, a);
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", str);
        object1.addAttribute("adminid", iduser);
        return "contacttohost";

    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/displaytask_1", method = RequestMethod.GET)
    public String Hantssdlesfjorqrm(
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems where id=?");
            stmt.setInt(1, 1);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        int count = 1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems");
            ResultSet rs = stmt.executeQuery();
            int l;
            while (rs.next()) {

                l = rs.getInt("id");
                stmt = con.prepareStatement("update adminproblems set id=? where id=?");
                stmt.setInt(1, count);
                count++;
                stmt.setInt(2, l);
                stmt.executeUpdate();
            }
            task_1 = count - 1;
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("adminname", s21);

        return "Host/displaytask";
    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/nextproblem_1", method = RequestMethod.GET)
    public String Hanstfsdlesfjorqrm(
            Model object1) {
        if (flag_1 == task_1) {
            flag_1 = 1;
        } else {
            flag_1++;
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems where id=?");
            stmt.setInt(1, flag_1);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "Host/displaytask";
    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/previousproblem_1", method = RequestMethod.GET)
    public String Hantsdslgesfjorqrm(
            Model object1) {
        if (flag_1 == 1) {
            flag_1 = task_1;
        } else {
            flag_1--;
        }
//        flag--;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems where id=?");
            stmt.setInt(1, flag_1);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "Host/displaytask";
    }

    //....................DISPLAY staff infromation ..................
    @RequestMapping(value = "/deleteproblem_1", method = RequestMethod.GET)
    public String Hanytssdlgesfjorqrm(
            Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("delete from adminproblems where id=?");
            stmt.setInt(1, flag_1);
            stmt.executeUpdate();

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        flag_1--;
        int count = 1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems");
            ResultSet rs = stmt.executeQuery();
            int l;
            while (rs.next()) {

                l = rs.getInt("id");
                stmt = con.prepareStatement("update adminproblems set id=? where id=?");
                stmt.setInt(1, count);
                count++;
                stmt.setInt(2, l);
                stmt.executeUpdate();
            }
            task_1 = count - 1;
        } catch (ClassNotFoundException | SQLException K) {
            System.out.println(K.getMessage());
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from adminproblems where id=?");
            stmt.setInt(1, flag_1);
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";

            while (rs.next()) {
                a = rs.getString("name");
                b = rs.getString("email");
                c = rs.getString("subject");
                d = rs.getString("message");
            }

            object1.addAttribute("name", a);
            object1.addAttribute("email", b);
            object1.addAttribute("subject", c);
            object1.addAttribute("message", d);
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "Host/displaytask";
    }

    //    -----------------  admin registeration form ------------------
    @RequestMapping(value = "/appoinmentregisteration", method = RequestMethod.GET)
    public String Handlefsogrm(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
            org.springframework.ui.Model object1) {
        int flag1 = 0;
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from appoinment where firstname=? and lastname=? or firstname=? and lab=?");
            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, a);
            stmt.setString(4, f);

            ResultSet rs = stmt.executeQuery();
            String m = "", l = "", s = "";
            while (rs.next()) {
                m = rs.getString("firstname");
                l = rs.getString("lastname");
                s = rs.getString("lab");
                if (m.equals(a) && l.equals(b) && s.equals(f)) {
                    flag1 = 1;
                }
            }
            if (flag1 == 1) {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

//step2 create  the connection object  
            PreparedStatement stmt = con.prepareStatement("insert into appoinment (firstname,lastname,contact,email,date,address,lab) values (?,?,?,?,?,?,?)");
            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, g);
            stmt.setString(6, e);
            stmt.setString(7, f);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("firstname", a);
        object1.addAttribute("lastname", b);
        object1.addAttribute("contact", c);
        object1.addAttribute("email", d);
        object1.addAttribute("branch", e);
        object1.addAttribute("lab", f);
        object1.addAttribute("datetime", g);
        object1.addAttribute("message", "234567");
        if (f.equals("X-ray")) {
            object1.addAttribute("amount", "350");
        } else if (f.equals("MICU")) {
            object1.addAttribute("amount", "8457");

        } else if (f.equals("OPD")) {
            object1.addAttribute("amount", "1500");

        } else if (f.equals("IPD")) {
            object1.addAttribute("amount", "59900");

        } else if (f.equals("NICU")) {
            object1.addAttribute("amount", "5000");

        } else {
            object1.addAttribute("amount", "1000");

        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//step2 create  the connection object  

            PreparedStatement stmt = con.prepareStatement("select * from appoinment where firstname=? and lastname=?");
            stmt.setString(1, str);
            stmt.setString(2, userlastname);
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l4.add(rs.getString("contact"));
                l5.add(rs.getString("email"));
                l6.add(rs.getString("date"));
                l7.add(rs.getString("address"));
                l8.add(rs.getString("lab"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l8", l8);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        return "appoinment";
    }

    // update user by admin
    @RequestMapping(value = "/updateuser_1", method = RequestMethod.GET)
    public String processsReagsistrtation(@RequestParam("d") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);

        iduser = x;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(x));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(x)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
                iduser = e;
                str = a;
                userlastname = b;
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        return "update/updateuser";
    }

    @RequestMapping(value = "/updateuserfirstname_1", method = RequestMethod.GET)
    public String processseagsistrktation(@RequestParam("a") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set firstname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            str = x;
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", x);
        object1.addAttribute("userlastname", userlastname);
        return "update/updateuser";
    }

    // 
    @RequestMapping(value = "/updateuserlastname_1", method = RequestMethod.GET)
    public String processseagisktrtation(@RequestParam("b") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", x);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set lastname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    //
    @RequestMapping(value = "/updateuserbirthdate_1", method = RequestMethod.GET)
    public String proceskssagistrtation(@RequestParam("c") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set dateofbirth=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    //
    @RequestMapping(value = "/updateuseremail_1", method = RequestMethod.GET)
    public String processagistrktation(@RequestParam("d") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set email=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    //
    @RequestMapping(value = "/updateusermobailno_1", method = RequestMethod.GET)
    public String procesagisktrtation(@RequestParam("e") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set mobailno=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    //
    @RequestMapping(value = "/updateuseraddress_1", method = RequestMethod.GET)
    public String procesagistrtakion(@RequestParam("f") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set address=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    @RequestMapping(value = "/updateuserpincode_1", method = RequestMethod.GET)
    public String procesagkistrtaio(@RequestParam("g") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set pincode=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    @RequestMapping(value = "/updateuserage_1", method = RequestMethod.GET)
    public String procesakgisrtaio(@RequestParam("h") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set age=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    @RequestMapping(value = "/updateuserheight_1", method = RequestMethod.GET)
    public String procejsagisstrtaio(@RequestParam("i") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set height=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    @RequestMapping(value = "/updateuserweight_1", method = RequestMethod.GET)
    public String procesagistrtajiso(@RequestParam("j") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set weight=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    @RequestMapping(value = "/updateuserpassword_1", method = RequestMethod.GET)
    public String procesagistjsrtaiso(@RequestParam("k") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set password=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    @RequestMapping(value = "/updateusermedicalhistory_1", method = RequestMethod.GET)
    public String procesageisjtrtaio(@RequestParam("l") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set medicalhistory=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "update/updateuser";
    }

    //
    @RequestMapping(value = "/updateuseradharnumber_1", method = RequestMethod.GET)
    public String procesageisstsrtaio(@RequestParam("m") String x, Model object1) {
        object1.addAttribute("adminname", s21);
        object1.addAttribute("alastname", adminlastname);
        object1.addAttribute("adminid", idadmin);
        object1.addAttribute("userid", iduser);
        object1.addAttribute("username", str);
        object1.addAttribute("userlastname", userlastname);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update user set adharnumber=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(iduser));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from user where id=?");
            stmt.setInt(1, Integer.parseInt(iduser));
            ResultSet rs = stmt.executeQuery();

            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String f = "";
            String g = "";
            String h = "";
            String i = "";
            String j = "";
            String k = "";
            String l = "";
            String m = "";
            String n = "";
            String p = "";
//
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                f = rs.getString("age");
                g = rs.getString("dateofbirth");
                h = rs.getString("weight");
                i = rs.getString("height");
                j = rs.getString("adharnumber");
                k = rs.getString("medicalhistory");
                l = rs.getString("gender");
                m = rs.getString("mobailno");
                n = rs.getString("email");
                p = rs.getString("pincode");
            }
            if (e.equals(iduser)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("age", f);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("weight", h);
                object1.addAttribute("height", i);
                object1.addAttribute("adharnumber", j);
                object1.addAttribute("medicalhistory", k);
                object1.addAttribute("gender", l);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("email", n);
                object1.addAttribute("pincode", p);
//            return "error";
            } else {
                return "home";
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException K) {
            System.out.println(K.getMessage());
        }
        return "update/updateuser";
    }

    //.................... DISPLAY doctors infromation ..................
    @RequestMapping(value = "/displayadmin", method = RequestMethod.GET)
    public String Handlesfocrqrm(Model object1) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin");
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("id"));
                l2.add(rs.getString("firstname"));
                l3.add(rs.getString("lastname"));
                l5.add(rs.getString("gender"));
                l6.add(rs.getString("dateofbirth"));
                l7.add(rs.getString("mobailno"));
                l9.add(rs.getString("email"));
                l12.add(rs.getString("address"));
                l14.add(rs.getString("role"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l5", l5);
            object1.addAttribute("l6", l6);
            object1.addAttribute("l7", l7);
            object1.addAttribute("l9", l9);
            object1.addAttribute("l12", l12);
            object1.addAttribute("l14", l14);
            object1.addAttribute("hostname", "Admin");
            object1.addAttribute("hostid", "1");

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "Host/displayformalladmin";

    }

    @RequestMapping(value = "/updateadmin_1", method = RequestMethod.GET)
    public String processssReagsrtation(@RequestParam("d") String x, Model object1) {

        idadmin = x;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);
                object1.addAttribute("adminname", a);
                object1.addAttribute("alastname", b);
                str = a;
                adminlastname = b;
//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    @RequestMapping(value = "/updateadminfirstname_1", method = RequestMethod.GET)
    public String procaessseagsistration(@RequestParam("a") String x, Model object1) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set firstname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            str = x;
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", x);
        object1.addAttribute("alastname", adminlastname);
        s21 = x;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    // 
    @RequestMapping(value = "/updateadminlastname_1", method = RequestMethod.GET)
    public String processsqeagistrtatuion(@RequestParam("b") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set lastname=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        adminlastname = x;
        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminbirthdate_1", method = RequestMethod.GET)
    public String processsagisgtrtuation(@RequestParam("c") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set dateofbirth=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminemail_1", method = RequestMethod.GET)
    public String processagistrtatiqqon(@RequestParam("d") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set email=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminmobailno_1", method = RequestMethod.GET)
    public String procesagistratiown(@RequestParam("e") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set mobailno=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    //
    @RequestMapping(value = "/updateadminaddress_1", method = RequestMethod.GET)
    public String procesagirstwrtaion(@RequestParam("f") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set address=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    @RequestMapping(value = "/updateadminpincode_1", method = RequestMethod.GET)
    public String procesagisstasrtaio(@RequestParam("g") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set pincode=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    @RequestMapping(value = "/updateadminpassword_1", method = RequestMethod.GET)
    public String procesagisstaiso(@RequestParam("k") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set password=? where id=?");

            stmt.setInt(1, Integer.parseInt(x));

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

////
            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");

            }
            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }

    @RequestMapping(value = "/updateadminrole_1", method = RequestMethod.GET)
    public String proceqsastsrtaiso(@RequestParam("ls") String x, Model object1) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("update admin set role=? where id=?");

            stmt.setString(1, x);

            stmt.setInt(2, Integer.parseInt(idadmin));
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        object1.addAttribute("adminname", str);
        object1.addAttribute("alastname", adminlastname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            PreparedStatement stmt = con.prepareStatement("select * from admin where id=?");
            stmt.setInt(1, Integer.parseInt(idadmin));
            ResultSet rs = stmt.executeQuery();
            String a = "";
            String b = "";
            String c = "";
            String d = "";
            String e = "";
            String g = "";
            String l = "";
            String n = "";
            String m = "";
            String f = "";

            while (rs.next()) {
                a = rs.getString("firstname");
                b = rs.getString("lastname");
                c = rs.getString("address");
                d = rs.getString("password");
                e = rs.getString("id");
                g = rs.getString("dateofbirth");
                l = rs.getString("gender");
                n = rs.getString("email");
                m = rs.getString("mobailno");
                f = rs.getString("role");
            }

            if (e.equals(idadmin)) {
                object1.addAttribute("firstname", a);
                object1.addAttribute("lastname", b);
                object1.addAttribute("address", c);
                object1.addAttribute("password", d);
                object1.addAttribute("id", e);
                object1.addAttribute("dateofbirth", g);
                object1.addAttribute("gender", l);
                object1.addAttribute("email", n);
                object1.addAttribute("mobailno", m);
                object1.addAttribute("role", f);

//                        return "error";
            } else {
                return "error";
            }
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }

        return "Host/updateadmin";
    }
}
