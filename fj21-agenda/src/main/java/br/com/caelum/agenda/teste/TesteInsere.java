package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.model.Contato;

public class TesteInsere {

	public static void main(String[] args) {
		
		Contato contato = new Contato();
		
		ContatoDao dao = new  ContatoDao();
		
		dao.adiciona(contato);
		
		

	}

}
