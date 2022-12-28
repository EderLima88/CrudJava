<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem</title>
</head>
<body>

	<%@page import="com.crudjava.dao.UsuarioDao, com.crudjava.bean.*, java.util.*"  %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
	<h1>Listagem de Usuários</h1>
	
	<%
	
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	
	%>
	
	<table border="1">
		<thead>
			<tr>
				<td>ID</td>
				<td>Nome</td>
				<td>Password</td>
				<!-- <td>Password</td> -->
				<td>email</td>
				<td>Sexo</td>
				<td>Pais</td>
				<!-- <td>Editar</td>
				<td>Excluir</td> -->
				</tr>
		</thead>
		
		<tbody>
	
		<tr><!--linha 1 -->	
			<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getEmail() }</td>
				<td>${usuario.getSexo()}</td>
				<td>${usuario.getPais()}</td>
				
				<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
				<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
			
			</tr>
	
			</c:forEach>
			</tr>

		</tbody>		
		
	</table>
	<br>
	<a href=addusuarioform.jsp>Adicionar novo usuário</a>
	

</body>
</html>