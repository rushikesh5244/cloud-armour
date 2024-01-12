<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%
    int getcost = 0;
    int total = 0;
    String status = "NO";
    Date a = new Date();
    DateFormat sf = new SimpleDateFormat("yyyy/MM/dd");
    String pdate = sf.format(a);
    String name = session.getAttribute("email").toString();
    String uid = session.getAttribute("uid").toString();
    String pname = request.getParameter("pname");
    System.out.println("Pname " + pname);
    String pitems = request.getParameter("pitems");
    System.out.println("Pitems " + pitems);
    String bname = request.getParameter("bname");
    System.out.println("Bname " + bname);
    String price = request.getParameter("nprice");
    System.out.println("Price " + price);
    String qty = request.getParameter("qty");
    System.out.println("Qty " + qty);
    Connection con = Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from product where pitems='" + pitems + "'");
    if (rs.next()) {
        getcost = rs.getInt("price");
    }
    int qty1 = Integer.parseInt(qty);
    total = qty1 * getcost;
    System.out.println("Total " + total);
    int i = st.executeUpdate("insert into cart (uid,name, productname, productitem, quantity, total, status, pdate, cstatus) values('"+uid+"','" + name + "','" + pname + "','" + pitems + "','" + qty + "','" + total + "','" + status + "','"+pdate+"','No')");
    if (i != 0) {
        response.sendRedirect("search.jsp?Items Added to Service List");
        System.out.println("Cart Add Success");
    } else {
        response.sendRedirect("search.jsp?Items Added Failed");
        System.out.println("Cart Add Failed");
    }
%>