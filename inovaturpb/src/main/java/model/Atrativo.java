package model;

import java.util.Arrays;

public class Atrativo {

	private int idAtrativo;
	private String nomeDoAtrativo;
	private String cidade;
	private String estado;
	private String tipo;
	private String[] segmento;
	private String segmentos;
	private String descricao;
	private String font;
	private String comoChegar;
	private String linkMaps;
	private String siteLocal;
	private String telCont;
	private String nomeRes;
	private String contRes;
	private String emailRes;
	private String[] horario;
	private String horarios;
	private String nomeCompRes;
	private String outrasInfo;
	private String contResPree;
	private String emailResPree;
	private String urlImg;
	private String dias;
	String pesquisa = "";

	public Atrativo() {
		super();
	}

	public Atrativo(int idAtrativo, String nomeDoAtrativo, String cidade, String estado, String tipo, String[] segmento,
			String segmentos, String descricao, String font, String comoChegar, String linkMaps, String siteLocal,
			String telCont, String nomeRes, String contRes, String emailRes, String[] horario, String horarios,
			String nomeCompRes, String outrasInfo, String contResPree, String emailResPree, String urlImg, String dias,
			String pesquisa) {
		super();
		this.idAtrativo = idAtrativo;
		this.nomeDoAtrativo = nomeDoAtrativo;
		this.cidade = cidade;
		this.estado = estado;
		this.tipo = tipo;
		this.segmento = segmento;
		this.segmentos = segmentos;
		this.descricao = descricao;
		this.font = font;
		this.comoChegar = comoChegar;
		this.linkMaps = linkMaps;
		this.siteLocal = siteLocal;
		this.telCont = telCont;
		this.nomeRes = nomeRes;
		this.contRes = contRes;
		this.emailRes = emailRes;
		this.horario = horario;
		this.horarios = horarios;
		this.nomeCompRes = nomeCompRes;
		this.outrasInfo = outrasInfo;
		this.contResPree = contResPree;
		this.emailResPree = emailResPree;
		this.urlImg = urlImg;
		this.dias = dias;
		this.pesquisa = pesquisa;
	}

	public String getNomeDoAtrativo() {
		return nomeDoAtrativo;
	}

	public void setNomeDoAtrativo(String nomeDoAtrativo) {
		this.nomeDoAtrativo = nomeDoAtrativo;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String[] getSegmento() {
		return segmento;
	}

	public void setSegmento(String[] segmento) {
		this.segmento = segmento;
	}

	public String getSegmentos() {
		return segmentos;
	}

	public void setSegmentos(String segmentos) {
		this.segmentos = segmentos;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getFont() {
		return font;
	}

	public void setFont(String font) {
		this.font = font;
	}

	public String getComoChegar() {
		return comoChegar;
	}

	public void setComoChegar(String comoChegar) {
		this.comoChegar = comoChegar;
	}

	public String getLinkMaps() {
		return linkMaps;
	}

	public void setLinkMaps(String linkMaps) {
		this.linkMaps = linkMaps;
	}

	public String getSiteLocal() {
		return siteLocal;
	}

	public void setSiteLocal(String siteLocal) {
		this.siteLocal = siteLocal;
	}

	public String getTelCont() {
		return telCont;
	}

	public void setTelCont(String telCont) {
		this.telCont = telCont;
	}

	public String getNomeRes() {
		return nomeRes;
	}

	public void setNomeRes(String nomeRes) {
		this.nomeRes = nomeRes;
	}

	public String getContRes() {
		return contRes;
	}

	public void setContRes(String contRes) {
		this.contRes = contRes;
	}

	public String getEmailRes() {
		return emailRes;
	}

	public void setEmailRes(String emailRes) {
		this.emailRes = emailRes;
	}
	
	public String getNomeCompRes() {
		return nomeCompRes;
	}

	public void setNomeCompRes(String nomeCompRes) {
		this.nomeCompRes = nomeCompRes;
	}

	public String getOutrasInfo() {
		return outrasInfo;
	}

	public void setOutrasInfo(String outrasInfo) {
		this.outrasInfo = outrasInfo;
	}

	public String getContResPree() {
		return contResPree;
	}

	public void setContResPree(String contResPree) {
		this.contResPree = contResPree;
	}

	public String getEmailResPree() {
		return emailResPree;
	}

	public void setEmailResPree(String emailResPree) {
		this.emailResPree = emailResPree;
	}

	public String getUrlImg() {
		return urlImg;
	}

	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}

	public String getDias() {
		return dias;
	}

	public void setDias(String dias) {
		this.dias = dias;
	}

	public String getPesquisa() {
		return pesquisa;
	}

	public void setPesquisa(String pesquisa) {
		this.pesquisa = pesquisa;
	}
	
	public int getIdAtrativo() {
		return idAtrativo;
	}

	public void setIdAtrativo(int idAtrativo) {
		this.idAtrativo = idAtrativo;
	}
	
	public String[] getHorario() {
		return horario;
	}

	public void setHorario(String[] horario) {
		this.horario = horario;
	}

	public String getHorarios() {
		return horarios;
	}

	public void setHorarios(String horarios) {
		this.horarios = horarios;
	}

	@Override
	public String toString() {
		return "Atrativo [idAtrativo=" + idAtrativo + ", nomeDoAtrativo=" + nomeDoAtrativo + ", cidade=" + cidade
				+ ", estado=" + estado + ", tipo=" + tipo + ", segmento=" + Arrays.toString(segmento) + ", segmentos="
				+ segmentos + ", descricao=" + descricao + ", font=" + font + ", comoChegar=" + comoChegar
				+ ", linkMaps=" + linkMaps + ", siteLocal=" + siteLocal + ", telCont=" + telCont + ", nomeRes="
				+ nomeRes + ", contRes=" + contRes + ", emailRes=" + emailRes + ", nomeCompRes=" + nomeCompRes
				+ ", outrasInfo=" + outrasInfo + ", contResPree=" + contResPree + ", emailResPree=" + emailResPree
				+ ", urlImg=" + urlImg + ", dias=" + dias + ", pesquisa=" + pesquisa + "]";
	}



	

}
