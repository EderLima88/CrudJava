<%@ page import="com.crudjava.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.crudjava.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UsuarioDao.deletarusuario(u);
response.sendRedirect("viewusuario.jsp");

%>
