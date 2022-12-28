<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição dos Usuário</title>
</head>
<body>

<%@ page import="com.crudjava.bean.Usuario, com.crudjava.dao.UsuarioDao" %>

<%
	String id = request.getParameter("id");
	Usuario usuario = UsuarioDao.getResgistroById(Integer.parseInt(id));
%>


<h1>Edição do Usuário</h1>

<form action="editusuario.jsp" methos="post">
	<input type="hidden" name="id" value="<%= usuario.getId()%>"/>
	<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" value="<%= usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" value="<%= usuario.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" value="<%= usuario.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Sexo</td>
				<td><input type="radio" name="sexo" value="masculino"/>Masculino</td>
				<td><input type="radio" name="sexo" value="feminino"/>Feminino</td>
			</tr>
			<tr>
				<td>Pais</td>
				<td>
					<select name="pais">
						<option>Brasil</option>
						<option>EUA</option>
						<option>Argentina</option>
						<option>Outro</option>
					</select>
				</td>
			</tr>
			
			<tr>
			<td><input type="submit" value="Editar usuario"></td>
			</tr>			
	</table>
	
</form>
</body>
</html>