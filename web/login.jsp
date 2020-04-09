<%@page  import="java.sql.*" %>

<%
//    String name=request.getParameter("name");
    String username=request.getParameter("username");
//    String email=request.getParameter("email");
    String password=request.getParameter("password");
//    String cpassword=request.getParameter("cpassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st = con.prepareStatement("select username, password from signup where username=? and password=?");
    st.setString(1, username);
    st.setString(2, password);
    ResultSet rs=st.executeQuery();
    while (rs.next()){
    
    response.sendRedirect("pricepoint.html");
    out.println("abs");
    return;
    
    }
%>
