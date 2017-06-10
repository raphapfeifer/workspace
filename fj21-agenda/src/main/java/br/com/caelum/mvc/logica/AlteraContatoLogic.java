package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.model.Contato;

public class AlteraContatoLogic implements Logica {

	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
			Contato contato = new Contato();
			contato.setNome(request.getParameter("nome"));
			contato.setEndereco(request.getParameter("endereco"));
			contato.setEmail(request.getParameter("email"));
			//String dataEmTexto = request.getParameter("dataNascimento");
			/*Calendar dataNascimento = null;
			
			try{
				Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
				dataNascimento = Calendar.getInstance();
				dataNascimento.setTime(date);
			}catch(ParseException e){
				System.out.println("Erro de conversão da data");
				}
			contato.setDataNascimento(dataNascimento);*/
			
			request.setAttribute("contato", contato );
			
		
		
		return "/WEB-INF/jsp/adiciona-contato.jsp";
	}
	
	

}
