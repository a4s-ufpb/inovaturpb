<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link rel="Stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="Stylesheet" href="bootstrap/bootstrap-theme.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">

<title>Cadastro de atrativos</title>
    
<link rel="stylesheet" href="css/Styles.css">
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a href="atrativos.jsp" class="btn btn-danger">Voltar</a>
  
</nav>

	<div class="bg"></div>
	
	<div class="aviso">
	<div class="top-color"></div>
	<h1>Formul�rio de Cadastro de Atrativos Tur�sticos da Para�ba</h1>
	
	<p>(Voc� pode ser um colaborador do Observat�rio de Turismo da Para�ba (OTPB) fornecendo informa��es sobre os atrativos tur�sticos de sua regi�o).</p>
	
	</div>
	
	<div id="container">
	
	
	
	
	<form action="GerenciarAtrativo.do" method="POST">
	<input type="hidden" name="idAtrativo" value="${atrativo.idAtrativo }"/> 
	<div class="form-group">
	<label class="nomeL">1. Nome do atrativo tur�stico *</label>
	<input class="form-control" type="text" name="nomeAtrativo" value="${atrativo.nomeAtrativo }" placeholder="Informe o nome do atrativo">
	</div>
	
	<div class="form-group">
	<label class="tipoL">2. Qual o tipo de atrativo tur�stico? *</label>
	<select class="form-control" name="tipo" value="${atrativo.tipo }">
		<option value="">Selecione o tipo do atrativo</option>
		<option>Aldeia ind�gena</option>
		<option>Atividade de lazer/esporte/entretenimento</option>
		<option>Biblioteca</option>
		<option>Col�gio/Escola</option>
		<option>Cachoeira</option>
		<option>Cemit�rio</option>
		<option>Engenho/Forte</option>
		<option>Fortaleza/Forte</option>
		<option>Forma��o rochosa</option>
		<option>Floresta/Bosque</option>
		<option>Hotel</option>
		<option>Igreja</option>
		<option>Lago/Lagoa/Barragem</option>
		<option>Parque</option>
		<option>Praia</option>
		<option>Pra�a</option>
		<option>Passeio N�utico</option>
		<option>Quilombo</option>
		<option>Restaurante</option>
		<option>S�tios Arqueol�gicos</option>
		<option>Rio/Riacho</option>
		<option>Local de Realiza��o de Eventos (Teatro/Casa de Shows/Centro de conven��es...)</option>
		<option>Unidade de conserva��o (parques e monumentos naturais)</option>
	</select>
	
	</div>
	
	
	<div class="form-group">
	<label class="segmentoL">3. Qual segmenta��o tur�stica o atrativo est� vinculado? (Voc� poder� selecionar mais de uma op��o apropriada para classificar a segmenta��o do atrativo tur�stico) *
</label><br>
	
	<label class="checkbox" for="seg1">
		<input type="checkbox" name="segmento" id="seg1" value="${atrativo.segmento }">
		Turismo hist�rico-cultural (patrim�nio hist�rico-cultural material e/ou imaterial)
		</label>
		<br>
		
	<label class="checkbox" for="seg2">
		<input type="checkbox" name="segmento" id="seg2" value="${atrativo.segmento }">
		Turismo rural ou ecoturismo ou turismo de aventura
		</label>
		<br>
	<label class="checkbox" for="seg3" >
		<input type="checkbox" name="segmento" id="seg3" value="${atrativo.segmento }">
		Turismo de eventos e neg�cios (t�cnicos-cient�fico e/ou profissional)
		</label>
		<br>
	<label class="checkbox" for="seg4">
		<input type="checkbox" name="segmento" id="seg4" value="${atrativo.segmento }">
		Turismo de entretenimento e lazer
		</label>
		<br>
	<label class="checkbox" for="seg5">
		<input type="checkbox" name="segmento" id="seg5" value="${atrativo.segmento }">
		Turismo gastron�mico
		</label>
		<br>
	<label class="checkbox" for="seg6">
		<input type="checkbox" name="segmento" id="seg6" value="${atrativo.segmento }">
		Turismo de sol e praia
		</label>
		<br>
	<label class="checkbox" for="seg7">
		<input type="checkbox" name="segmento" id="seg7" value="${atrativo.segmento }">
		Turismo de esportes e turismo n�utico
		</label>
		<br>
	<label class="checkbox" for="seg8">
		<input type="checkbox" name="segmento" id="seg8" value="${atrativo.segmento }">
		Turismo religioso e peregrina��o
		</label>
		<br>
	<label class="checkbox" for="seg9">
		<input type="checkbox" name="segmento" id="seg9" value="${atrativo.segmento }">
		Turismo pedag�gico ou educacional
		</label>
		<br>
	<label class="checkbox" for="seg10">
		<input type="checkbox" name="segmento" id="seg10" value="${atrativo.segmento }">
		Turismo macabro ou Dark Turism
		</label>
	
	</div>
	
	<div class="horarioVisL-div" >
	
	<label class="horarioVisL" >4. Quais os dias e hor�rios que o atrativo tur�stico est� dispon�vel para visita��o? *</label>
	
	</div>
	
	<div class="horarioVis" >
	
	<table class="horarioTable" width="300%">
	<tr>
	<td class="dias-tabela-segunda">Segunda-feira</td>
	
	<td>
	<label class="texto-tabela">Fechado 24h
	<input class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">Aberto 24h
	<input class="checkbox-dias"  type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">6-7<br><br>
	<input  class="checkbox-dias"  type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">7-8<br><br>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">8-9<br><br>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">9-10<br><br>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">10-11
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">11-12
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">12-13
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">13-14
	<input class="checkbox-dias"  type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">14-15
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">15-16
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">16-17
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">17-18
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">18-19
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">19-20
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">20-21
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">21-22
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">22-23
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">23-00
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">0-1
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">1-2
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">2-3
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">3-4
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">4-5
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<td>
	<label class="texto-tabela">5-6
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	
	<tr>
	<td class="dias-tabela">Ter�a-feira</td>
	
		<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	</tr>
	
	<tr>
	<td class="dias-tabela">Quarta-feira</td>
	
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	</tr>
	
	<tr>
	<td class="dias-tabela">Quinta-feira</td>
	
	
			<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	</tr>
	
	<tr>
	<td class="dias-tabela">Sexta-feira</td>
	
		
			<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	</tr>
	
	<tr>
	<td class="dias-tabela">S�bado</td>
	
			<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	</tr>
	
	<tr>
	<td class="dias-tabela">Domingo</td>
	
	
			<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	<td>
	<label>
	<input  class="checkbox-dias" type="checkBox" name="horarioVis">
	</label>
	</td>
	</tr>
	
	</table>
	</div>

	<div class="form-group">
	<label class="comoChegarL">5. Como chegar ao atrativo tur�stico? (Coloque o endere�o e informa��es uteis para quem deseja encontrar o atrativo tur�stico). *</label>
	<input class="form-control" type="text" name="comoChegar" placeholder="Como chegar?" value="${atrativo.comoChegar }">
	</div>
	
	<div class="form-group">
	<label class="descL">6. Inclua uma descri��o detalhada sobre o atrativo tur�stico. *</label>
	<input class="form-control" type="text" name="descricao" value="${atrativo.descricao }" placeholder="Informe uma descri��o do atrativo">
	</div>
	
	<div class="form-group">
	<label class="linkMapsL">7. Link para acessar o atrativo tur�stico no Google Maps. *
	<input class="form-control" type="text" name="linkMaps" value="${atrativo.linkMaps }" placeholder="Link para atrativo no Google Maps">
	</label>
	</div>
	
	<div class="form-group">
	<label class="siteLocaL">8. Site do atrativo ou destino tur�stico. *</label>
	<input class="form-control" type="text" name="siteLocal" value="${atrativo.siteLocal }" placeholder="Site do Local">
	</div>
	
	<div class="form-group">
	<label class="estadoL">9. Estado *</label>
	<select class="form-control" name="estado" value="${atrativo.estado }">
	<option value="">Selecione um estado</option>
	<option value="AC">Acre</option>
	<option value="AL">Alagoas</option>
	<option value="AP">Amap�</option>
	<option value="AM">Amazonas</option>
	<option value="BA">Bahia</option>
	<option value="CE">Cear�</option>
	<option value="DF">Distrito Federal</option>
	<option value="ES">Esp�rito Santo</option>
	<option value="GO">Goi�s</option>
	<option value="MA">Maranh�o</option>
	<option value="MT">Mato Grosso</option>
	<option value="MS">Mato Grosso do Sul</option>
	<option value="MG">Minas Gerais</option>
	<option value="PA">Par�</option>
	<option value="PB" selected>Para�ba</option>
	<option value="PR">Paran�</option>
	<option value="PE">Pernambuco</option>
	<option value="PI">Piau�</option>
	<option value="RJ">Rio de Janeiro</option>
	<option value="RN">Rio Grande do Norte</option>
	<option value="RS">Rio Grande do Sul</option>
	<option value="RO">Rond�nia</option>
	<option value="RR">Roraima</option>
	<option value="SC">Santa Catarina</option>
	<option value="SP">S�o Paulo</option>
	<option value="SE">Sergipe</option>
	<option value="TO">Tocantins</option>
</select>
	
	
	</div>
	
	<div class="form-group">
	<label class="cidadeL">10. Munic�pio *</label>
	<select class="form-control" name="cidade" value="${atrativo.cidade }">
		<option value="">Selecione uma cidade</option>
		<option>�GUA BRANCA</option>
		<option>AGUIAR</option>
		<option>ALAGOA GRANDE</option>
		<option>ALAGOA NOVA</option>
		<option>ALAGOINHA</option>
		<option>ALCANTIL (BOQUEIRAO)</option>
		<option>ALGODAO (REMIGIO)</option>
		<option>ALGOD�O DE JANDA�RA</option>
		<option>ALHANDRA</option>
		<option>AMPARO</option>
		<option>AMPARO (SUME)</option>
		<option>APARECIDA</option>
		<option>APARECIDA (SOUSA)</option>
		<option>ARA�AGI</option>
		<option>ARARA</option>
		<option>ARARUNA</option>
		<option>AREIA</option>
		<option>AREIA DE BARAUNA (PASSAGEM)</option>
		<option>AREIA DE BARA�NAS</option>
		<option>AREIAL</option>
		<option>AREIAS (UIRA�NA)</option>
		<option>AROEIRAS</option>
		<option>ASSUN��O</option>
		<option>ASSUNCAO (TAPEROA)</option>
		<option>BA�A DA TRAI��O</option>
		<option>BALAN�OS (CACHOEIRA DOS INDIOS)</option>
		<option>BANANEIRAS</option>
		<option>BARA�NA</option>
		<option>BARAUNA (PICUI)</option>
		<option>BARRA DE SANTA ROSA</option>
		<option>BARRA DE SANTANA</option>
		<option>BARRA DE S�O MIGUEL</option>
		<option>BARRA DO CAMARATUBA (MATARACA)</option>
		<option>BAYEUX</option>
		<option>BEBEL�NDIA (SANTA RITA)</option>
		<option>BEL�M</option>
		<option>BEL�M DO BREJO DO CRUZ</option>
		<option>BERNARDINO BATISTA</option>
		<option>BERNARDINO BATISTA (TRIUNFO)</option>
		<option>BOA VENTURA</option>
		<option>BOA VISTA</option>
		<option>BOA VISTA (CAMPINA GRANDE)</option>
		<option>BODOCONGO</option>
		<option>BOM JESUS</option>
		<option>BOM SUCESSO</option>
		<option>BOM SUCESSO (SOLEDADE)</option>
		<option>BONITO DE SANTA F�</option>
		<option>BOQUEIR�O</option>
		<option>BORBOREMA</option>
		<option>BREJO DO CRUZ</option>
		<option>BREJO DOS SANTOS</option>
		<option>CAAPOR�</option>
		<option>CABACEIRAS</option>
		<option>CABEDELO</option>
		<option>CACHOEIRA (GUARABIRA)</option>
		<option>CACHOEIRA DOS �NDIOS</option>
		<option>CACHOEIRINHA (IBIARA)</option>
		<option>CACIMBA DE AREIA</option>
		<option>CACIMBA DE DENTRO</option>
		<option>CACIMBAS</option>
		<option>CAI�ARA</option>
		<option>CAJAZEIRAS</option>
		<option>CAJAZEIRINHA (POMBAL)</option>
		<option>CAJAZEIRINHAS</option>
		<option>CALDAS BRAND�O</option>
		<option>CAMALA�</option>
		<option>CAMPINA GRANDE</option>
		<option>CAMPO ALEGRE (SOUSA)</option>
		<option>CAMPO DE SANTANA</option>
		<option>CAMPO GRANDE (ITABAIANA)</option>
		<option>CAMURUPIM (RIO TINTO)</option>
		<option>CAPIM</option>
		<option>CARA�BAS</option>
		<option>CARAUBAS (SAO JOAO DO CARIRI)</option>
		<option>CARDOSO (CONCEI��O)</option>
		<option>CARRAPATEIRA</option>
		<option>CASINHA DO HOMEM (SANTA CRUZ)</option>
		<option>CASSERENGUE</option>
		<option>CATINGUEIRA</option>
		<option>CATOL� (CAMPINA GRANDE)</option>
		<option>CATOL� DO ROCHA</option>
		<option>CATURIT�</option>
		<option>CATURITE (BOQUEIRAO)</option>
		<option>CEPILHO (AREIA)</option>
		<option>CONCEI�AO</option>
		<option>CONDADO</option>
		<option>CONDE</option>
		<option>CONGO</option>
		<option>COREMAS</option>
		<option>CORONEL MAIA (CATOL� DO ROCHA)</option>
		<option>COXIXOLA</option>
		<option>COXIXOLA (SERRA BRANCA)</option>
		<option>CRUZ DO ESP�RITO SANTO</option>
		<option>CUBATI</option>
		<option>CUIT�</option>
		<option>CUIT� DE MAMANGUAPE</option>
		<option>CUITE DE MAMANGUAPE (MAMANGUAPE)</option>
		<option>CUITEGI</option>
		<option>CUPISSURA (CAAPOR�)</option>
		<option>CURRAL DE CIMA</option>
		<option>CURRAL DE CIMA (MAMANGUAPE)</option>
		<option>CURRAL VELHO</option>
		<option>DAMI�O</option>
		<option>DESTERRO</option>
		<option>DIAMANTE</option>
		<option>DONA IN�S</option>
		<option>DUAS ESTRADAS</option>
		<option>EMAS</option>
		<option>ENGENHEIRO �VIDO (CAJAZEIRAS)</option>
		<option>ESPERAN�A</option>
		<option>FAGUNDES</option>
		<option>F�TIMA (CACHOEIRA DOS �NDIOS)</option>
		<option>FAZENDA NOVA (UIRA�NA)</option>
		<option>FORTE VELHO (SANTA RITA)</option>
		<option>FREI MARTINHO</option>
		<option>GADO BRAVO</option>
		<option>GADO BRAVO (AROEIRAS)</option>
		<option>GALANTE (CAMPINA GRANDE)</option>
		<option>GUARABIRA</option>
		<option>GUARAITA</option>
		<option>GUARAITA (ITABAIANA)</option>
		<option>GURINH�M</option>
		<option>GURJ�O</option>
		<option>IBIARA</option>
		<option>IGARACY</option>
		<option>ING�</option>
		<option>ITABAINA</option>
		<option>ITAJUBATIBA (CATINGUEIRA)</option>
		<option>ITAPORANGA</option>
		<option>ITAPOROROCA</option>
		<option>ITATUBA</option>
		<option>JACARA�</option>
		<option>JERIC�</option>
		<option>JO�O PESSOA</option>
		<option>JOCA CLAUDINO</option>
		<option>JUAREZ T�VORA</option>
		<option>JUAZEIRINHO</option>
		<option>JUNCO DO SERID�</option>
		<option>JURIPIRANGA</option>
		<option>JURU</option>
		<option>LAGOA</option>
		<option>LAGOA DAS ESTRELAS (SOUSA)</option>
		<option>LAGOA DE DENTRO</option>
		<option>LAGOA DE DENTRO (CAMPINA GRANDE)</option>
		<option>LAGOA SECA</option>
		<option>LASTRO</option>
		<option>LEROL�NDIA (SANTA RITA)</option>
		<option>LIVRAMENTO</option>
		<option>LOGRADOURO</option>
		<option>LOGRADOURO (CAI�ARA)</option>
		<option>LUCENA</option>
		<option>M�E D'�GUA</option>
		<option>MAIA (BANANEIRAS)</option>
		<option>MALTA</option>
		<option>MAMANGUAPE</option>
		<option>MANA�RA</option>
		<option>MARCA��O</option>
		<option>MARCA��O (RIO TINTO)</option>
		<option>MARI</option>
		<option>MARIZ�POLIS</option>
		<option>MARIZOPOLIS (SOUSA)</option>
		<option>MASSARANDUBA</option>
		<option>MATA LIMA (AREIA)</option>
		<option>MATA VIRGEM (UMBUZEIRO)</option>
		<option>MATARACA</option>
		<option>MATINHAS</option>
		<option>MATINHAS (ALAGOA NOVA)</option>
		<option>MATO GROSSO</option>
		<option>MATUR�IA</option>
		<option>MATUREIA (TEIXEIRA)</option>
		<option>MELO (CUIT�)</option>
		<option>MOGEIRO</option>
		<option>MONTADAS</option>
		<option>MONTE HOREBE</option>
		<option>MONTEIRO</option>
		<option>MONTEVIDEO (CONCEI��O)</option>
		<option>MONTEVID�U (CONCEI��O)</option>
		<option>MULUNGU</option>
		<option>MUQU�M (AREIA)</option>
		<option>NATUBA</option>
		<option>NAZAR� (POCINHOS)</option>
		<option>NAZAREZINHO</option>
		<option>NOSSA SENHORA DO LIVRAMENTO (SANTA RITA)</option>
		<option>NOVA FLORESTA</option>
		<option>NOVA OLINDA</option>
		<option>NOVA PALMEIRA</option>
		<option>N�CLEO N 2 (SOUSA)</option>
		<option>N�CLEO N 3 (SOUSA)</option>
		<option>ODIL�NDIA (SANTA RITA)</option>
		<option>OLHO D AGUA DE CAPIM (MAMANGUAPE)</option>
		<option>OLHO D'�GUA</option>
		<option>OLIVEDOS</option>
		<option>OURO VERMELHO</option>
		<option>PARARI</option>
		<option>PARARI (SAO JOSE DOS CORDEIROS)</option>
		<option>PASSAGEM</option>
		<option>PATOS</option>
		<option>PAULISTA</option>
		<option>PEDRA BRANCA</option>
		<option>PEDRA LAVADA</option>
		<option>PEDRAS DE FOGO</option>
		<option>PEDRO R�GIS</option>
		<option>PELO SINAL (MANA�RA)</option>
		<option>PEREIROS (SOUSA)</option>
		<option>PIANC�</option>
		<option>PICU�</option>
		<option>PILAR</option>
		<option>PIL�ENZINHOS</option>
		<option>PINDUR�O (CAMALA�)</option>
		<option>PIO X (SUM�)</option>
		<option>PIRAU� (NATUBA)</option>
		<option>PIRPIRITUBA</option>
		<option>PITANGA DE ESTRADA (MAMANGUAPE)</option>
		<option>PITIMBU</option>
		<option>POCINHOS</option>
		<option>POCO (SAO JOAO DO RIO DO PEIXE)</option>
		<option>PO�O DANTAS</option>
		<option>POCO DANTAS (UIRAUNA)</option>
		<option>PO�O DE JOS� DE MOURA</option>
		<option>POMBAL</option>
		<option>PORTEIRINHA DE PEDRA (CAMPINA GRANDE)</option>
		<option>PRATA</option>
		<option>PRINCESA ISABEL</option>
		<option>PUXINAN�</option>
		<option>QUEIMADAS</option>
		<option>QUIXAB�</option>
		<option>QUIXABA (UIRAUNA)</option>
		<option>QUIXAD� (UIRA�NA)</option>
		<option>REM�DIO</option>
		<option>RIACH�O</option>
		<option>RIACH�O DO BACAMARTE</option>
		<option>RIACHAO DO BACAMARTE (INGA)</option>
		<option>RIACH�O DO PO�O</option>
		<option>RIACHO DE SANTO ANT�NIO</option>
		<option>RIACHO DE SANTO ANTONIO (BOQUEIR�O)</option>
		<option>RIACHO DOS CAVALOS</option>
		<option>RIBEIRA (SANTA RITA)</option>
		<option>RIO TINTO</option>
		<option>RUA NOVA (BEL�M)</option>
		<option>SALEMA (RIO TINTO)</option>
		<option>SALGADINHO</option>
		<option>SALGADO DE S�O F�LIX</option>
		<option>SANTA CEC�LIA</option>
		<option>SANTA CRUZ</option>
		<option>SANTA GERTRUDES (PATOS)</option>
		<option>SANTA HELENA</option>
		<option>SANTA IN�S</option>
		<option>SANTA LUZIA</option>
		<option>SANTA LUZIA DO CARIRI (SERRA BRANCA)</option>
		<option>SANTA MARIA (S�O JO�O DO TIGRE)</option>
		<option>SANTA RITA</option>
		<option>SANTA RITA (UIRA�NA)</option>
		<option>SANTA TEREZINHA</option>
		<option>SANTA TEREZINHA (CAMPINA GRANDE)</option>
		<option>SANTANA DE MANGUEIRA</option>
		<option>SANTANA DOS CARROTES</option>
		<option>SANTO ANDR�</option>
		<option>SANTO ANDRE (GURJAO)</option>
		<option>S�O BENTINHO</option>
		<option>S�O BENTO</option>
		<option>S�O DOMINGOS</option>
		<option>SAO DOMINGOS (CABACEIRAS)</option>
		<option>S�O DOMINGOS DO CARIRI</option>
		<option>S�O FRANCISCO</option>
		<option>S�O FRANCISCO (SOUSA)</option>
		<option>S�O GON�ALO (SOUSA)</option>
		<option>S�O JO�O BOSCO (UIRA�NA)</option>
		<option>S�O JO�O DO CARIRI</option>
		<option>S�O JO�O DO RIO DO PEIXE</option>
		<option>S�O JO�O DO TIGRE</option>
		<option>SAO JOSE (BREJO DO CRUZ)</option>
		<option>SAO JOSE (PRINCESA ISABEL)</option>
		<option>S�O JOS� DA LAGOA TAPADA</option>
		<option>S�O JOS� DA MATA GRANDE (CAMPINA GRANDE)</option>
		<option>S�O JOS� DE CAIANA</option>
		<option>S�O JOS� DE ESPINHARAS</option>
		<option>S�O JOS� DE MARIMBAS (CACHOEIRA DOS �NDIOS)</option>
		<option>S�O JOS� DE PIRANHAS</option>
		<option>S�O JOS� DE PRINCESA</option>
		<option>S�O JOS� DO BONFIM</option>
		<option>S�O JOS� DO BREJO CRUZ</option>
		<option>S�O JOS� DO SABUGI</option>
		<option>S�O JOS� DOS CORDEIROS</option>
		<option>S�O JOS� DOS RAMOS</option>
		<option>S�O MAMEDE</option>
		<option>S�O MIGUEL DE TAIPU</option>
		<option>S�O PEDRO (SANTA CRUZ)</option>
		<option>S�O SEBASTI�O DE LAGOA RO�A</option>
		<option>S�O SEBASTI�O DO UMBUZEIRO</option>
		<option>S�O VICENTE DO SERID�</option>
		<option>SAO VICENTE DO SERIDO OU SERIDO</option>
		<option>SAP�</option>
		<option>SERID� (S�O VICENTE DO SERID�)</option>
		<option>SERIDO (S�O VICENTE DO SERIDO, SERIDO)</option>
		<option>SERRA BRANCA</option>
		<option>SERRA DA RAIZ</option>
		<option>SERRA GRANDE</option>
		<option>SERRA REDONDA</option>
		<option>SERRARIA</option>
		<option>SERT�OZINHO</option>
		<option>SERTAOZINHO (DUAS ESTRADAS)</option>
		<option>SOBRADO</option>
		<option>SOBRADO (SAP�)</option>
		<option>SOL�NEA</option>
		<option>SOLEDADE</option>
		<option>SOSSEGO</option>
		<option>SOSSEGO (CUITE)</option>
		<option>SOUSA</option>
		<option>SUCURU (SERRA BRANCA)</option>
		<option>SUM�</option>
		<option>TACIMA</option>
		<option>TAMBAUZINHO (SANTA RITA)</option>
		<option>TANQUES (PO�O DANTAS)</option>
		<option>TAPERO�</option>
		<option>TAVARES</option>
		<option>TEIXEIRA</option>
		<option>TEN�RIO</option>
		<option>TENORIO (JUANZEIRINHO)</option>
		<option>TRIUNFO</option>
		<option>UIRA�NA</option>
		<option>UMARI (S�O JO�O DO RIO DO PEIXE)</option>
		<option>UMBUZEIRO</option>
		<option>V�RZEA</option>
		<option>V�RZEA COMPRIDA (POMBAL)</option>
		<option>V�RZEA NOVA (SANTA RITA)</option>
		<option>VAZANTE (DIAMANTE)</option>
		<option>VIEIR�POLIS</option>
		<option>VIEIR�POLIS (SOUSA)</option>
		<option>VISTA SERRANA</option>
		<option>ZABELE</option>
		<option>ZABELE (S�O SEBASTI�O DO UMBUZEIRO)</option>
		
	</select>
	
	</div>
	
	<div class="form-group">
	<label class="nomeResL">11. Nome do respons�vel pelo atrativo ou de quem pode lhe guiar at� o local. *</label>
	<input class="form-control" type="text" name="nomeRes" value="${atrativo.nomeRes }" placeholder="Nome do respons�vel pelo atrativo">
	</div>
	
	<div class="form-group">
	<label class="emailResL">12. E-mail do respons�vel pelo atrativo ou de quem pode lhe guiar at� o local. *</label>
	<input class="form-control" type="text" name="emailRes" value="${atrativo.emailRes }" placeholder="Contatos do respons�vel pelo atrativo (e-mail/telefone/instagram)">
	</div>
	
	<div class="form-group">
	<label class="fontL">17. Fonte das informa��es (Poss�veis fontes de informa��o externas que utilizou para preencher este formul�rio: links de sites, documentos, etc. ) *</label>
	<input class="form-control" type="text" name="font" value="${atrativo.font }" placeholder="Informe a fonte de informa��o">
	</div>
	
	<div class="form-group">
	<label class="contResL">13. Telefone ou WhatsApp do respons�vel pelo atrativo ou de quem pode lhe guiar at� o local *</label>
	<input class="form-control" type="text" name="contRes" value="${atrativo.contRes }" placeholder="Contatos para Ag�ncias de Receptivo ou Guias de Turismo">
	</div>

	<div class="form-group">
	<label>14. Outras informa��es relevantes sobre o atrativo tur�stico (Fique a vontade para acrescentar sites que falam sobre o atrativo ou perfis no Instagram/Facebook, por exemplo). *</label>
	<input class="form-control" type="text" name="outrasInfo" value="${atrativo.outrasInfo }" placeholder="Outras informa��es relevantes sobre o atrativo">
	</div>
	
	<div class="form-group">
	<label class="urlImgL">15. Fotos do atrativo tur�stico (Acrescente de 1 a 5 fotos do atrativo) *</label>
	<input class="form-control-file" type="file" value="${atrativo.urlImg }" name="urlImg">
	</div>
	
	<div class="form-group">
	
	<label>16. As fotos e informa��es do atrativo podem ser divulgadas em redes sociais, sites e aplicativos de turismo sem custos? *</label>
	<br>
	
	<div class="custom-control custom-radio">
  	<input type="radio" id="s" name="permissao" value="${atrativo.permissao }" class="custom-control-input">
  	<label class="custom-control-label" for="s" >Sim</label>
	</div>
	
	<div class="custom-control custom-radio">
  	<input type="radio" id="n" name="permissao" value="${atrativo.permissao }" class="custom-control-input">
  	<label class="custom-control-label" for="n" >N�o</label>
	</div>
	</div>
	
	<div class="form-group">
	<label class="nomeCompResL">18. Nome completo do respons�vel pelo preenchimento deste<br>formul�rio *</label>
	<input class="form-control" type="text" value="${atrativo.nomeCompRes }" name="nomeCompRes" placeholder="Nome completo do respons�vel pelo preenchimento">
	</div>
	
	<div class="form-group">
	<label class="contResPreeL">19. Telefone ou WhatsApp do respons�vel pelo preenchimento deste formul�rio *</label>
	<input class="form-control" type="text" name="contResPree" value="${atrativo.contResPree }" placeholder="Contatos do respons�vel pelo preenchimento">
	</div>
	
	
	<div class="form-group">
	<label>20. Caso necess�rio, acrescente informa��es adicionais, como cr�ticas ou sugest�es ou oportunidades de melhorias.</label>
	<input class="form-control" type="text" name="infoAdicionais" value="${atrativo.infoAdicionais }" placeholder="Acrescente informa��es adicionais">
	</div>
	<div></div>

	<div class="form-group">
	
	<input class="btn btn-primary" type="submit" value="ENVIAR"></div>
	
	
	</form>

	</div>


</body>
</html>