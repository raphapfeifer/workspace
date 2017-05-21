<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link type="text/css" href="css/jquery.css" rel="stylesheet">
		<!-- <script type="text/javascript" src="js/adiciona-contato.js"></script> -->
		<script type="text/javascript" src="js/jquery.js"></script>
		<script  type="text/javascript" src="js/jquery-ui.js"></script> 
		<script>
		 $(document).ready(function(){
	            $("#dataNascimento").datepicker({dateFormat:'dd/mm/yy'});
	        });
		</script> 
	</head>
	<body>
		<c:import url="cabecalho.jsp" />
	
		<form action="adicionaContato" method="POST">
			Nome: <input type="text" name="nome" /><br />
			E-mail: <input type="text" name="email" /><br />
			Endereço:<input type="text" name="endereco" /><br />
			Data Nascimento:
					<input  id="dataNascimento"  readonly="true" name="dataNascimento" /><br />
			
			<input type="submit" value="Gravar" />
		</form>
		
		<c:import url="rodape.jsp" />
	</body>
</html>