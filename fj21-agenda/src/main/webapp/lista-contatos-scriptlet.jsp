<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,
    br.com.caelum.agenda.dao.*,
    br.com.caelum.agenda.model.*" %>
    
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<table>
			<% 
				ContatoDao dao = new ContatoDao();
				List<Contato> contatos = dao.getLista();
				
				
				for(Contato contato : contatos){
			%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=contato.getDataNascimento().getTime() %></td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>