<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.cloudarmor.kk.action.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.UUID"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    Statement st2 = null;
    ResultSet rs = null;
    String uid = UUID.randomUUID().toString().substring(0, 5);
    String uname = request.getParameter("uname");
    String pass = request.getParameter("pass");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String phone = request.getParameter("phone");
    String loc = request.getParameter("loc");
    String ipaddress = InetAddress.getLocalHost().toString();
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Calendar cal = Calendar.getInstance();
    String rdate = dateFormat.format(cal.getTime());
    System.out.println(dateFormat.format(cal.getTime()));
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from user where email='" + email + "' AND ipaddress='" + ipaddress + "'");
        if (rs.next()) {
            st1 = con.createStatement();
            int i = st1.executeUpdate("insert into sybilattack( uid, name, email, pass, dob, location, contactno, ipaddress,rtime) values('" + uid + "','" + uname + "','" + email + "','" + pass + "','" + dob + "','" + loc + "','" + phone + "','" + ipaddress + "','"+rdate+"')");
            if (i != 0) {
                Mail m = new Mail();
                m.sendMail("Email id :" + email + "\nYou're already exist user", "KK", email);
                response.sendRedirect("reg.jsp?msg=success");
            } else {
                response.sendRedirect("reg.jsp?msgg=failed");
            }
        } else {
            st2 = con.createStatement();
            int i = st.executeUpdate("insert into user( uid,name, email, pass, dob, location, contactno, ipaddress,rtime,status) values('" + uid + "','" + uname + "','" + email + "','" + pass + "','" + dob + "','" + loc + "','" + phone + "','" + ipaddress + "','"+rdate+"','No')");
            if (i != 0) {
                Mail m = new Mail();
                m.sendMail("Email id" + email + "\nYour Registration Successfully,Waiting for Confimation from CloudArmor", "KK", email);
                response.sendRedirect("reg.jsp?msg=success");
            } else {
                response.sendRedirect("reg.jsp?msgg=failed");
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>