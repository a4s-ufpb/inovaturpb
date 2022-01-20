package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Atrativo;
import model.AtrativoDAO;

/**
 * Servlet implementation class GerenciarPerfil
 */
@WebServlet("/GerenciadorDeAtrativo")
public class GerenciadorDeAtrativo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GerenciadorDeAtrativo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String mensagem = "";
		
		String acao = request.getParameter("acao");
		String idAtrativo = request.getParameter("idAtrativo");
		
		Atrativo a = new Atrativo();
		
		try {
			AtrativoDAO aDAO = new AtrativoDAO();
			if(acao.equals("deletar")) {
				a.setIdAtrativo(Integer.parseInt(idAtrativo));
				if(aDAO.deletar(a)) {
					mensagem = "Excluido com sucesso";
				}else {
					mensagem = "Erro ao excluir";
				}
			}
		} catch (Exception e) {
			out.print(e);
			mensagem = "Erro ao executar";
		}
		out.println("<script type='text/javascript'>");
		out.println("alert('"+mensagem+"');");
		out.println("location.href='atrativos.jsp';");
		out.println("</script>");
		
		}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String nomeAtrativo = request.getParameter("nomeAtrativo");
		String cidade = request.getParameter("cidade");
    	String estado = request.getParameter("estado");
    	String tipo = request.getParameter("tipo");
    	String[] segmento = request.getParameterValues("segmento");
    	String segmentos = "";
    	String descricao = request.getParameter("descricao");
    	String font = request.getParameter("font");
    	String comoChegar = request.getParameter("comoChegar");
    	String linkMaps = request.getParameter("linkMaps");
    	String siteLocal = request.getParameter("siteLocal");
    	String telCont = request.getParameter("telCont");
    	String nomeRes = request.getParameter("nomeRes");
    	String contRes = request.getParameter("contRes");
    	String emailRes = request.getParameter("emailRes");
    	String[] horario = request.getParameterValues("horarioVis");
    	String horarios = "";
    	String nomeCompRes = request.getParameter("nomeCompRes");
    	String outrasInfo = request.getParameter("outrasInfo");
    	String contResPree = request.getParameter("contResPree");
    	String emailResPree = request.getParameter("emailResPree");
    	String urlImg = request.getParameter("urlImg");
    	String dias = request.getParameter("dias");
		
		Atrativo a = new Atrativo();
		
		String mensagem = "";
		
		try {
			AtrativoDAO aDAO = new AtrativoDAO();
			a.setNomeDoAtrativo(nomeAtrativo);
			a.setCidade(cidade);
			a.setEstado(estado);
			a.setTipo(tipo);
			for(int i=0; i<segmento.length; i++){
    			segmentos += segmento[i]+", ";
    		}
			a.setSegmentos(segmentos);
			a.setDescricao(descricao);
			a.setFont(font);
			a.setComoChegar(comoChegar);
			a.setLinkMaps(linkMaps);
			a.setSiteLocal(siteLocal);
			a.setTelCont(telCont);
			a.setNomeRes(nomeRes);
			a.setContRes(contRes);
			a.setEmailRes(emailRes);
			for(int i=0; i<horario.length; i++){
    			horarios += horario[i]+", ";
    		}
			a.setHorarios(horarios);
			a.setNomeCompRes(nomeCompRes);
			a.setOutrasInfo(outrasInfo);
			a.setContResPree(contResPree);
			a.setEmailResPree(emailResPree);
			a.setUrlImg(urlImg);
			a.setDias(dias);
			if(aDAO.gravar(a)) {
				mensagem = "Atrativo cadastrado com sucesso!";
			}else {
				mensagem = "Erro ao cadastrar atrativo!";
			}
		} catch (Exception e) {
			mensagem = "Erro ao executar!" + e;
		}
		out.println("<script type='text/javascript'>");
		out.println("alert('"+mensagem+"');");
		out.println("location.href='atrativos.jsp';");
		out.println("</script>");
	}

}
