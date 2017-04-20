package br.com.caelum.agenda.teste;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.caelum.agende.jdbc.ConnectionFactory;

public class TestaConexao {

	public static void main(String[] args) throws SQLException {
		
		Connection connection = new ConnectionFactory().getConnection();
		System.out.println("Conexao Aberta!");
		connection.close();

	}

}
