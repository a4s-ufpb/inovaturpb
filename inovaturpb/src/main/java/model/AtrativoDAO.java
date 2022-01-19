package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import connection.Conecta;

public class AtrativoDAO extends Conecta{

	public AtrativoDAO() throws Exception{}
	
	public ArrayList<Atrativo> getLista() throws Exception{
		ArrayList<Atrativo> lista = new ArrayList<Atrativo>();
		String sql = "SELECT * FROM atrativosbd";
		this.conectar();
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(sql);
		while(rs.next()) {
			Atrativo a = new Atrativo();
			a.setIdAtrativo(rs.getInt("idAtrativo"));
			a.setNomeDoAtrativo(rs.getString("nomeAtrativo"));
			a.setCidade(rs.getString("cidade"));
			a.setEstado(rs.getString("estado"));
			a.setSegmentos(rs.getString("segmento"));
			lista.add(a);
		}
		this.desconectar();
		return lista;
	}
	
	public ArrayList<Atrativo> pesquisar(String pesquisa) throws Exception{
		ArrayList<Atrativo> lista = new ArrayList<Atrativo>();
		String consulta = "SELECT idAtrativo, nomeAtrativo, cidade, estado, segmento, horario "
				+ "FROM atrativosbd "
				+ "WHERE nomeAtrativo like ?";
//		Cria o objeto para que será utilizado para enviar comandos SQL para o BD
		this.conectar();
		PreparedStatement stm = conn.prepareStatement(consulta);
		stm.setString(1, "%" + pesquisa + "%");
//		Armazena o resultado do comando enviado para o banco de dados
		ResultSet rs = stm.executeQuery();
//		rs.next() aponta para o proximo registro do BD, se houver um
		while(rs.next()) {
			Atrativo a = new Atrativo();
			a.setIdAtrativo(rs.getInt("idAtrativo"));
			a.setNomeDoAtrativo(rs.getString("nomeAtrativo"));
			a.setCidade(rs.getString("cidade"));
			a.setEstado(rs.getString("estado"));
			a.setHorarios(rs.getString("horario"));
			a.setSegmentos(rs.getString("segmento"));
			lista.add(a);
		}
		this.desconectar();
		return lista;
	}
	
	public boolean gravar(Atrativo a) {
		try {
			String sql;
			this.conectar();
				sql = "INSERT INTO atrativosbd(idAtrativo, nomeAtrativo, cidade, estado, tipo, segmento, DescricaoAtrativo, FonteInformacoes, ComoChegar, LinkAtrativo, SiteLocal, TelefoneContato, NomeResponsavel, ContatosResponsavel, EmailResponsavel, horario, dia, OutrasInformacoesRelevantes, ContatosResponsavelPreenchimento, EmailResponsavelPreenchimento, imagens) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
			
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, a.getIdAtrativo());
			pstm.setString(2, a.getNomeDoAtrativo());
			pstm.setString(3, a.getCidade());
			pstm.setString(4, a.getEstado());
			pstm.setString(5, a.getTipo());
			pstm.setString(6, a.getSegmentos());
			pstm.setString(7, a.getDescricao());
			pstm.setString(8, a.getFont());
			pstm.setString(9, a.getComoChegar());
			pstm.setString(10, a.getLinkMaps());
			pstm.setString(11, a.getSiteLocal());
			pstm.setString(12, a.getTelCont());
			pstm.setString(13, a.getNomeRes());
			pstm.setString(14, a.getContRes());
			pstm.setString(15, a.getEmailRes());
			pstm.setString(16, a.getHorarios());
			pstm.setString(17, a.getDias());
			pstm.setString(18, a.getOutrasInfo());
			pstm.setString(19, a.getContResPree());
			pstm.setString(20, a.getEmailResPree());
			pstm.setString(21, a.getUrlImg());
			pstm.execute();
			this.desconectar();
			return true;
			
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}
	
	public Atrativo getCarregaPorID(int idAtrativo) throws Exception{
		
		Atrativo a = new Atrativo();
		
		String sql = "SELECT * FROM atrativosbd WHERE idAtrativo=?";
		this.conectar();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, idAtrativo);
		ResultSet rs = pstm.executeQuery();
		if(rs.next()) {
			a.setIdAtrativo(rs.getInt("idAtrativo"));
			a.setNomeDoAtrativo(rs.getString("nomeAtrativo"));
		}
		this.desconectar();
		return a;
	}
	
	public boolean deletar(Atrativo a) {
		try {
			 this.conectar();
			 String sql = "delete FROM atrativosbd where idAtrativo=?";
			 PreparedStatement pstm = conn.prepareStatement(sql);
			 pstm.setInt(1, a.getIdAtrativo());
			 pstm.execute();
			 this.desconectar();
			 return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}
}
