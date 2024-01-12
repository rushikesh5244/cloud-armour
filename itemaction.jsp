<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    String imgid = request.getParameter("imgid");
    String pname = request.getParameter("pname");
    String pitem = request.getParameter("pitem");
    String brand = request.getParameter("bname");
    String price = request.getParameter("price");
    String pdate = request.getParameter("pdate");
    try{
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("update product set pname='"+pname+"', pitems='"+pitem+"', bname='"+brand+"', price='"+price+"', validity='"+pdate+"' where imgid='"+imgid+"'");
        if(i!=0)
        {
            response.sendRedirect("additems1.jsp?msg=success");
        }
        else
        {
            response.sendRedirect("additems1.jsp?msgg=failed");
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
%>