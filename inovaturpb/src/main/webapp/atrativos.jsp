<%@page import="model.AtrativoDAO"%>
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
<link rel="Stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/Styles.css">
<title>Atrativos</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="navbar-brand" href="atrativos.jsp">Atrativos <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="navbar-brand dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pesquisas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="pesquisaPorNome.jsp">Filtrar por nome</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

<div class="card">
	<div class="card-header">
		<a href="form_atrativo.jsp" class="btn btn-success">Cadastrar novo atrativo</a>
	</div>

	<div class="card-body">
	<table class="table table-hover table-striped table-bordered display" id="listarAtrativo">
		
		<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Cidade</th>
			<th>Estado</th>
			<th>Opções</th>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Cidade</th>
			<th>Estado</th>
			<th>Opções</th>
		</tr>
		</tfoot>
		
		<jsp:useBean class="model.AtrativoDAO" id="aDAO"/>
		
		<tbody>
		<c:forEach var="a" items="${aDAO.lista}">
		<tr>
			<td>${a.idAtrativo }</td>
			<td>${a.nomeDoAtrativo }</td>
			<td>${a.cidade }</td>
			<td>${a.estado }</td>
			<td>
				<a class="btn btn-danger" href="GerenciadorDeAtrativo?acao=deletar&idAtrativo=${a.idAtrativo }" onclick="return confirm('Deseja realmente excluir o atrativo ${a.nomeDoAtrativo }?')">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
				  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
				  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
				</svg>
					Excluir
				</a>
			</td>
			
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	</div>

	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#listarAtrativo').DataTable( {
	        "language": {
	            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Portuguese-Brasil.json"
	        }
	    } );
	} );
	</script>
	

</body>
</html>