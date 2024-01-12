<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    try {
        String pitem = request.getQueryString().replaceAll("%20", " ");
        System.out.println("Product Item Name "+pitem);
        String email = session.getAttribute("email").toString();
        con = Dbconnection.getConnection();
        st = con.createStatement();
        st1 = con.createStatement();
        rs = st.executeQuery("select * from  cart where name='" + email + "' AND productitem='" + pitem + "' AND status='NO'");
        if (rs.next()) {
            int i = st1.executeUpdate("update cart set status='YES' where name='" + email + "' AND status='NO'");
            session.setAttribute("pitem", pitem);
            response.sendRedirect("feedback.jsp?msg=Item Purchased Successfully");
        } else {
            response.sendRedirect("cartdetails.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>