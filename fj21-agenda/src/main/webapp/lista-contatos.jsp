<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	
		<c:import url="cabecalho.jsp"/>
		
		<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
		
		<table>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>E-mail</th>
					<th>Endereço</th>
					<th>Data de Nascimento</th>
				</tr>
				<c:forEach var="contato" items="${dao.lista}">
				<tr bgcolor="#${contato.id % 2 == 0 ? '00CED1' : '696969'}">
					<td>
						<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>					
					</td>
					<td>${contato.nome}</td>
					<td>
						<c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>
								E-mail não informado
							</c:otherwise>
						</c:choose>
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td> 
				</tr>	
			</c:forEach>	
		</table>
		<c:import url="rodape.jsp"/>
	</body>
</html>