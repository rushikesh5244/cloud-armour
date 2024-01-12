<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String imgid = request.getParameter("imgid");
    String a = request.getParameter("pname");
    String b = request.getParameter("pitems");
    String c = request.getParameter("bname");
    String d = request.getParameter("price");
    String e = request.getParameter("validity");
    try {
        Connection con = Dbconnection.getConnection();
        Statement st = con.createStatement();
        int i = st.executeUpdate("update product set pname='" + a + "', pitems='" + b + "', bname='" + c + "', price='" + d + "', validity='" + e + "' where imgid='" + imgid + "'");
        if (i != 0) {
            response.sendRedirect("plist.jsp?msg=success");
        }
    } catch (Exception e1) {
        System.out.println("Error in update " + e1.getLocalizedMessage());
    }
%>