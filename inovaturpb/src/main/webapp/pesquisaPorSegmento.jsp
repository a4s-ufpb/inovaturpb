<%@page import="model.AtrativoDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Atrativo"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="Stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="Stylesheet" href="bootstrap/bootstrap-theme.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/Styles.css">
<title>Filtra por segmentos</title>
<link rel="stylesheet" href="css/Styles.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="navbar-brand" href="atrativos.jsp">Atrativos <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="navbar-brand" href="listar_usuarios.jsp">Usuarios <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="navbar-brand dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pesquisas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="pesquisaPorSegmento.jsp">Filtrar por nome</a>
        </div>
      </li>
    </ul>
    <ul class="nav nav-pills justify-content-end ml-auto">
    	<li class="nav-item active">
    		<a class="navbar-brand" href="form_login.jsp">Sair<span class="sr-only">(current)</span></a>
    	</li>
    </ul>
  </div>
</nav>
	
	<div class="card">
	
	<form class="form-inline my-2 my-lg-0" action="pesquisaPorSegmento.jsp" method="GET">
	<div class="card-header">
	<input class="form-control mr-sm-2" type="search" placeholder="Filtrar" aria-label="Filtrar" name="pesquisa" value="${param.pesquisa}">
	<button class="btn btn-primary my-2 my-sm-0" type="submit">Filtrar</button>
	</div>
	
	<div class="table table-bordered">
	<table class="table" >
	<caption>Lista de atrativos</caption>
		
		<thead>
		<tr>
			<th>ID</th>
			<th>nome</th>
			<th>cidade</th>
			<th>estado</th>
			<th>horários</th>
			<th>segmentos</th>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<th>ID</th>
			<th>nome</th>
			<th>cidade</th>
			<th>estado</th>
			<th>horários</th>
			<th>segmentos</th>
		</tr>
		</tfoot>
		
		<jsp:useBean class="model.AtrativoDAO" id="aDAO"/>
		
		<tbody>
		<c:forEach var="a" items="${aDAO.pesquisar(param.pesquisa) }">
		<tr>
			<td>${a.idAtrativo }</td>
			<td>${a.nomeDoAtrativo }</td>
			<td>${a.cidade }</td>
			<td>${a.estado }</td>
			<td>${a.horarios }</td>
			<td>${a.segmentos }</td>
			
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	
	</form>
	</div>
	
</body>
</html>