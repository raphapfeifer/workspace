<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
		<link type="text/css" href="css/jquery.css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script  type="text/javascript" src="js/jquery-ui.js"></script> 
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/adicionaContato.js"></script>
	   
	<body>
		<c:import url="cabecalho.jsp" /> 
	
		<c:if test="${empty contato}">	
			<form action="adicionaContato" method="POST">
		
		
				Nome: <input type="text" name="nome" /><br />
				E-mail: <input type="text" name="email" /><br />
				Endereço:<input type="text" name="endereco" /><br />
				Data Nascimento:
					<input type="text" id="dataNascimento" name="dataNascimento" readonly="readonly" /><br />
			
				<input type="submit" value="Gravar" />
			</form>
		</c:if>	
		<c:if test="${not empty contato }">
			<form action="alteraContato" method="POST">
		
		
				Nome: <input type="text" name="nome" value="${contato.nome}" /><br />
				E-mail: <input type="text" name="email" value="${contato.email}" /><br />
				Endereço:<input type="text" name="endereco" value="${contato.endereco}" /><br />
				Data Nascimento:
					<input type="text" id="dataNascimento" name="dataNascimento" readonly="readonly" /><br />
			
				<input type="submit" value="Alterar" />
			</form>
		</c:if>
		
		<c:import url="rodape.jsp" /> 
	</body>
</html>