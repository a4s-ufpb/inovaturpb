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
	<h1>Formulário de Cadastro de Atrativos Turísticos da Paraíba</h1>
	
	<p>(Você pode ser um colaborador do Observatório de Turismo da Paraíba (OTPB) fornecendo informações sobre os atrativos turísticos de sua região).</p>
	
	</div>
	
	<div id="container">
	
	
	
	
	<form action="GerenciarAtrativo.do" method="POST">
	<input type="hidden" name="idAtrativo" value="${atrativo.idAtrativo }"/> 
	<div class="form-group">
	<label class="nomeL">1. Nome do atrativo turístico *</label>
	<input class="form-control" type="text" name="nomeAtrativo" value="${atrativo.nomeAtrativo }" placeholder="Informe o nome do atrativo">
	</div>
	
	<div class="form-group">
	<label class="tipoL">2. Qual o tipo de atrativo turístico? *</label>
	<select class="form-control" name="tipo" value="${atrativo.tipo }">
		<option value="">Selecione o tipo do atrativo</option>
		<option>Aldeia indígena</option>
		<option>Atividade de lazer/esporte/entretenimento</option>
		<option>Biblioteca</option>
		<option>Colégio/Escola</option>
		<option>Cachoeira</option>
		<option>Cemitério</option>
		<option>Engenho/Forte</option>
		<option>Fortaleza/Forte</option>
		<option>Formação rochosa</option>
		<option>Floresta/Bosque</option>
		<option>Hotel</option>
		<option>Igreja</option>
		<option>Lago/Lagoa/Barragem</option>
		<option>Parque</option>
		<option>Praia</option>
		<option>Praça</option>
		<option>Passeio Náutico</option>
		<option>Quilombo</option>
		<option>Restaurante</option>
		<option>Sítios Arqueológicos</option>
		<option>Rio/Riacho</option>
		<option>Local de Realização de Eventos (Teatro/Casa de Shows/Centro de convenções...)</option>
		<option>Unidade de conservação (parques e monumentos naturais)</option>
	</select>
	
	</div>
	
	
	<div class="form-group">
	<label class="segmentoL">3. Qual segmentação turística o atrativo está vinculado? (Você poderá selecionar mais de uma opção apropriada para classificar a segmentação do atrativo turístico) *
</label><br>
	
	<label class="checkbox" for="seg1">
		<input type="checkbox" name="segmento" id="seg1" value="${atrativo.segmento }">
		Turismo histórico-cultural (patrimônio histórico-cultural material e/ou imaterial)
		</label>
		<br>
		
	<label class="checkbox" for="seg2">
		<input type="checkbox" name="segmento" id="seg2" value="${atrativo.segmento }">
		Turismo rural ou ecoturismo ou turismo de aventura
		</label>
		<br>
	<label class="checkbox" for="seg3" >
		<input type="checkbox" name="segmento" id="seg3" value="${atrativo.segmento }">
		Turismo de eventos e negócios (técnicos-científico e/ou profissional)
		</label>
		<br>
	<label class="checkbox" for="seg4">
		<input type="checkbox" name="segmento" id="seg4" value="${atrativo.segmento }">
		Turismo de entretenimento e lazer
		</label>
		<br>
	<label class="checkbox" for="seg5">
		<input type="checkbox" name="segmento" id="seg5" value="${atrativo.segmento }">
		Turismo gastronômico
		</label>
		<br>
	<label class="checkbox" for="seg6">
		<input type="checkbox" name="segmento" id="seg6" value="${atrativo.segmento }">
		Turismo de sol e praia
		</label>
		<br>
	<label class="checkbox" for="seg7">
		<input type="checkbox" name="segmento" id="seg7" value="${atrativo.segmento }">
		Turismo de esportes e turismo náutico
		</label>
		<br>
	<label class="checkbox" for="seg8">
		<input type="checkbox" name="segmento" id="seg8" value="${atrativo.segmento }">
		Turismo religioso e peregrinação
		</label>
		<br>
	<label class="checkbox" for="seg9">
		<input type="checkbox" name="segmento" id="seg9" value="${atrativo.segmento }">
		Turismo pedagógico ou educacional
		</label>
		<br>
	<label class="checkbox" for="seg10">
		<input type="checkbox" name="segmento" id="seg10" value="${atrativo.segmento }">
		Turismo macabro ou Dark Turism
		</label>
	
	</div>
	
	<div class="horarioVisL-div" >
	
	<label class="horarioVisL" >4. Quais os dias e horários que o atrativo turístico está disponível para visitação? *</label>
	
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
	<td class="dias-tabela">Terça-feira</td>
	
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
	<td class="dias-tabela">Sábado</td>
	
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
	<label class="comoChegarL">5. Como chegar ao atrativo turístico? (Coloque o endereço e informações uteis para quem deseja encontrar o atrativo turístico). *</label>
	<input class="form-control" type="text" name="comoChegar" placeholder="Como chegar?" value="${atrativo.comoChegar }">
	</div>
	
	<div class="form-group">
	<label class="descL">6. Inclua uma descrição detalhada sobre o atrativo turístico. *</label>
	<input class="form-control" type="text" name="descricao" value="${atrativo.descricao }" placeholder="Informe uma descrição do atrativo">
	</div>
	
	<div class="form-group">
	<label class="linkMapsL">7. Link para acessar o atrativo turístico no Google Maps. *
	<input class="form-control" type="text" name="linkMaps" value="${atrativo.linkMaps }" placeholder="Link para atrativo no Google Maps">
	</label>
	</div>
	
	<div class="form-group">
	<label class="siteLocaL">8. Site do atrativo ou destino turístico. *</label>
	<input class="form-control" type="text" name="siteLocal" value="${atrativo.siteLocal }" placeholder="Site do Local">
	</div>
	
	<div class="form-group">
	<label class="estadoL">9. Estado *</label>
	<select class="form-control" name="estado" value="${atrativo.estado }">
	<option value="">Selecione um estado</option>
	<option value="AC">Acre</option>
	<option value="AL">Alagoas</option>
	<option value="AP">Amapá</option>
	<option value="AM">Amazonas</option>
	<option value="BA">Bahia</option>
	<option value="CE">Ceará</option>
	<option value="DF">Distrito Federal</option>
	<option value="ES">Espírito Santo</option>
	<option value="GO">Goiás</option>
	<option value="MA">Maranhão</option>
	<option value="MT">Mato Grosso</option>
	<option value="MS">Mato Grosso do Sul</option>
	<option value="MG">Minas Gerais</option>
	<option value="PA">Pará</option>
	<option value="PB" selected>Paraíba</option>
	<option value="PR">Paraná</option>
	<option value="PE">Pernambuco</option>
	<option value="PI">Piauí</option>
	<option value="RJ">Rio de Janeiro</option>
	<option value="RN">Rio Grande do Norte</option>
	<option value="RS">Rio Grande do Sul</option>
	<option value="RO">Rondônia</option>
	<option value="RR">Roraima</option>
	<option value="SC">Santa Catarina</option>
	<option value="SP">São Paulo</option>
	<option value="SE">Sergipe</option>
	<option value="TO">Tocantins</option>
</select>
	
	
	</div>
	
	<div class="form-group">
	<label class="cidadeL">10. Município *</label>
	<select class="form-control" name="cidade" value="${atrativo.cidade }">
		<option value="">Selecione uma cidade</option>
		<option>ÁGUA BRANCA</option>
		<option>AGUIAR</option>
		<option>ALAGOA GRANDE</option>
		<option>ALAGOA NOVA</option>
		<option>ALAGOINHA</option>
		<option>ALCANTIL (BOQUEIRAO)</option>
		<option>ALGODAO (REMIGIO)</option>
		<option>ALGODÃO DE JANDAÍRA</option>
		<option>ALHANDRA</option>
		<option>AMPARO</option>
		<option>AMPARO (SUME)</option>
		<option>APARECIDA</option>
		<option>APARECIDA (SOUSA)</option>
		<option>ARAÇAGI</option>
		<option>ARARA</option>
		<option>ARARUNA</option>
		<option>AREIA</option>
		<option>AREIA DE BARAUNA (PASSAGEM)</option>
		<option>AREIA DE BARAÚNAS</option>
		<option>AREIAL</option>
		<option>AREIAS (UIRAÚNA)</option>
		<option>AROEIRAS</option>
		<option>ASSUNÇÃO</option>
		<option>ASSUNCAO (TAPEROA)</option>
		<option>BAÍA DA TRAIÇÃO</option>
		<option>BALANÇOS (CACHOEIRA DOS INDIOS)</option>
		<option>BANANEIRAS</option>
		<option>BARAÚNA</option>
		<option>BARAUNA (PICUI)</option>
		<option>BARRA DE SANTA ROSA</option>
		<option>BARRA DE SANTANA</option>
		<option>BARRA DE SÃO MIGUEL</option>
		<option>BARRA DO CAMARATUBA (MATARACA)</option>
		<option>BAYEUX</option>
		<option>BEBELÂNDIA (SANTA RITA)</option>
		<option>BELÉM</option>
		<option>BELÉM DO BREJO DO CRUZ</option>
		<option>BERNARDINO BATISTA</option>
		<option>BERNARDINO BATISTA (TRIUNFO)</option>
		<option>BOA VENTURA</option>
		<option>BOA VISTA</option>
		<option>BOA VISTA (CAMPINA GRANDE)</option>
		<option>BODOCONGO</option>
		<option>BOM JESUS</option>
		<option>BOM SUCESSO</option>
		<option>BOM SUCESSO (SOLEDADE)</option>
		<option>BONITO DE SANTA FÉ</option>
		<option>BOQUEIRÃO</option>
		<option>BORBOREMA</option>
		<option>BREJO DO CRUZ</option>
		<option>BREJO DOS SANTOS</option>
		<option>CAAPORÃ</option>
		<option>CABACEIRAS</option>
		<option>CABEDELO</option>
		<option>CACHOEIRA (GUARABIRA)</option>
		<option>CACHOEIRA DOS ÍNDIOS</option>
		<option>CACHOEIRINHA (IBIARA)</option>
		<option>CACIMBA DE AREIA</option>
		<option>CACIMBA DE DENTRO</option>
		<option>CACIMBAS</option>
		<option>CAIÇARA</option>
		<option>CAJAZEIRAS</option>
		<option>CAJAZEIRINHA (POMBAL)</option>
		<option>CAJAZEIRINHAS</option>
		<option>CALDAS BRANDÃO</option>
		<option>CAMALAÚ</option>
		<option>CAMPINA GRANDE</option>
		<option>CAMPO ALEGRE (SOUSA)</option>
		<option>CAMPO DE SANTANA</option>
		<option>CAMPO GRANDE (ITABAIANA)</option>
		<option>CAMURUPIM (RIO TINTO)</option>
		<option>CAPIM</option>
		<option>CARAÚBAS</option>
		<option>CARAUBAS (SAO JOAO DO CARIRI)</option>
		<option>CARDOSO (CONCEIÇÃO)</option>
		<option>CARRAPATEIRA</option>
		<option>CASINHA DO HOMEM (SANTA CRUZ)</option>
		<option>CASSERENGUE</option>
		<option>CATINGUEIRA</option>
		<option>CATOLÉ (CAMPINA GRANDE)</option>
		<option>CATOLÉ DO ROCHA</option>
		<option>CATURITÉ</option>
		<option>CATURITE (BOQUEIRAO)</option>
		<option>CEPILHO (AREIA)</option>
		<option>CONCEIÇAO</option>
		<option>CONDADO</option>
		<option>CONDE</option>
		<option>CONGO</option>
		<option>COREMAS</option>
		<option>CORONEL MAIA (CATOLÉ DO ROCHA)</option>
		<option>COXIXOLA</option>
		<option>COXIXOLA (SERRA BRANCA)</option>
		<option>CRUZ DO ESPÍRITO SANTO</option>
		<option>CUBATI</option>
		<option>CUITÉ</option>
		<option>CUITÉ DE MAMANGUAPE</option>
		<option>CUITE DE MAMANGUAPE (MAMANGUAPE)</option>
		<option>CUITEGI</option>
		<option>CUPISSURA (CAAPORÃ)</option>
		<option>CURRAL DE CIMA</option>
		<option>CURRAL DE CIMA (MAMANGUAPE)</option>
		<option>CURRAL VELHO</option>
		<option>DAMIÃO</option>
		<option>DESTERRO</option>
		<option>DIAMANTE</option>
		<option>DONA INÊS</option>
		<option>DUAS ESTRADAS</option>
		<option>EMAS</option>
		<option>ENGENHEIRO ÁVIDO (CAJAZEIRAS)</option>
		<option>ESPERANÇA</option>
		<option>FAGUNDES</option>
		<option>FÁTIMA (CACHOEIRA DOS ÍNDIOS)</option>
		<option>FAZENDA NOVA (UIRAÚNA)</option>
		<option>FORTE VELHO (SANTA RITA)</option>
		<option>FREI MARTINHO</option>
		<option>GADO BRAVO</option>
		<option>GADO BRAVO (AROEIRAS)</option>
		<option>GALANTE (CAMPINA GRANDE)</option>
		<option>GUARABIRA</option>
		<option>GUARAITA</option>
		<option>GUARAITA (ITABAIANA)</option>
		<option>GURINHÉM</option>
		<option>GURJÃO</option>
		<option>IBIARA</option>
		<option>IGARACY</option>
		<option>INGÁ</option>
		<option>ITABAINA</option>
		<option>ITAJUBATIBA (CATINGUEIRA)</option>
		<option>ITAPORANGA</option>
		<option>ITAPOROROCA</option>
		<option>ITATUBA</option>
		<option>JACARAÚ</option>
		<option>JERICÓ</option>
		<option>JOÃO PESSOA</option>
		<option>JOCA CLAUDINO</option>
		<option>JUAREZ TÁVORA</option>
		<option>JUAZEIRINHO</option>
		<option>JUNCO DO SERIDÓ</option>
		<option>JURIPIRANGA</option>
		<option>JURU</option>
		<option>LAGOA</option>
		<option>LAGOA DAS ESTRELAS (SOUSA)</option>
		<option>LAGOA DE DENTRO</option>
		<option>LAGOA DE DENTRO (CAMPINA GRANDE)</option>
		<option>LAGOA SECA</option>
		<option>LASTRO</option>
		<option>LEROLÂNDIA (SANTA RITA)</option>
		<option>LIVRAMENTO</option>
		<option>LOGRADOURO</option>
		<option>LOGRADOURO (CAIÇARA)</option>
		<option>LUCENA</option>
		<option>MÃE D'ÁGUA</option>
		<option>MAIA (BANANEIRAS)</option>
		<option>MALTA</option>
		<option>MAMANGUAPE</option>
		<option>MANAÍRA</option>
		<option>MARCAÇÃO</option>
		<option>MARCAÇÃO (RIO TINTO)</option>
		<option>MARI</option>
		<option>MARIZÓPOLIS</option>
		<option>MARIZOPOLIS (SOUSA)</option>
		<option>MASSARANDUBA</option>
		<option>MATA LIMA (AREIA)</option>
		<option>MATA VIRGEM (UMBUZEIRO)</option>
		<option>MATARACA</option>
		<option>MATINHAS</option>
		<option>MATINHAS (ALAGOA NOVA)</option>
		<option>MATO GROSSO</option>
		<option>MATURÉIA</option>
		<option>MATUREIA (TEIXEIRA)</option>
		<option>MELO (CUITÉ)</option>
		<option>MOGEIRO</option>
		<option>MONTADAS</option>
		<option>MONTE HOREBE</option>
		<option>MONTEIRO</option>
		<option>MONTEVIDEO (CONCEIÇÃO)</option>
		<option>MONTEVIDÉU (CONCEIÇÃO)</option>
		<option>MULUNGU</option>
		<option>MUQUÉM (AREIA)</option>
		<option>NATUBA</option>
		<option>NAZARÉ (POCINHOS)</option>
		<option>NAZAREZINHO</option>
		<option>NOSSA SENHORA DO LIVRAMENTO (SANTA RITA)</option>
		<option>NOVA FLORESTA</option>
		<option>NOVA OLINDA</option>
		<option>NOVA PALMEIRA</option>
		<option>NÚCLEO N 2 (SOUSA)</option>
		<option>NÚCLEO N 3 (SOUSA)</option>
		<option>ODILÂNDIA (SANTA RITA)</option>
		<option>OLHO D AGUA DE CAPIM (MAMANGUAPE)</option>
		<option>OLHO D'ÁGUA</option>
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
		<option>PEDRO RÉGIS</option>
		<option>PELO SINAL (MANAÍRA)</option>
		<option>PEREIROS (SOUSA)</option>
		<option>PIANCÓ</option>
		<option>PICUÍ</option>
		<option>PILAR</option>
		<option>PILÕENZINHOS</option>
		<option>PINDURÃO (CAMALAÚ)</option>
		<option>PIO X (SUMÉ)</option>
		<option>PIRAUÁ (NATUBA)</option>
		<option>PIRPIRITUBA</option>
		<option>PITANGA DE ESTRADA (MAMANGUAPE)</option>
		<option>PITIMBU</option>
		<option>POCINHOS</option>
		<option>POCO (SAO JOAO DO RIO DO PEIXE)</option>
		<option>POÇO DANTAS</option>
		<option>POCO DANTAS (UIRAUNA)</option>
		<option>POÇO DE JOSÉ DE MOURA</option>
		<option>POMBAL</option>
		<option>PORTEIRINHA DE PEDRA (CAMPINA GRANDE)</option>
		<option>PRATA</option>
		<option>PRINCESA ISABEL</option>
		<option>PUXINANÃ</option>
		<option>QUEIMADAS</option>
		<option>QUIXABÁ</option>
		<option>QUIXABA (UIRAUNA)</option>
		<option>QUIXADÁ (UIRAÚNA)</option>
		<option>REMÍDIO</option>
		<option>RIACHÃO</option>
		<option>RIACHÃO DO BACAMARTE</option>
		<option>RIACHAO DO BACAMARTE (INGA)</option>
		<option>RIACHÃO DO POÇO</option>
		<option>RIACHO DE SANTO ANTÔNIO</option>
		<option>RIACHO DE SANTO ANTONIO (BOQUEIRÃO)</option>
		<option>RIACHO DOS CAVALOS</option>
		<option>RIBEIRA (SANTA RITA)</option>
		<option>RIO TINTO</option>
		<option>RUA NOVA (BELÉM)</option>
		<option>SALEMA (RIO TINTO)</option>
		<option>SALGADINHO</option>
		<option>SALGADO DE SÃO FÉLIX</option>
		<option>SANTA CECÍLIA</option>
		<option>SANTA CRUZ</option>
		<option>SANTA GERTRUDES (PATOS)</option>
		<option>SANTA HELENA</option>
		<option>SANTA INÊS</option>
		<option>SANTA LUZIA</option>
		<option>SANTA LUZIA DO CARIRI (SERRA BRANCA)</option>
		<option>SANTA MARIA (SÃO JOÃO DO TIGRE)</option>
		<option>SANTA RITA</option>
		<option>SANTA RITA (UIRAÚNA)</option>
		<option>SANTA TEREZINHA</option>
		<option>SANTA TEREZINHA (CAMPINA GRANDE)</option>
		<option>SANTANA DE MANGUEIRA</option>
		<option>SANTANA DOS CARROTES</option>
		<option>SANTO ANDRÉ</option>
		<option>SANTO ANDRE (GURJAO)</option>
		<option>SÃO BENTINHO</option>
		<option>SÃO BENTO</option>
		<option>SÃO DOMINGOS</option>
		<option>SAO DOMINGOS (CABACEIRAS)</option>
		<option>SÃO DOMINGOS DO CARIRI</option>
		<option>SÃO FRANCISCO</option>
		<option>SÃO FRANCISCO (SOUSA)</option>
		<option>SÃO GONÇALO (SOUSA)</option>
		<option>SÃO JOÃO BOSCO (UIRAÚNA)</option>
		<option>SÃO JOÃO DO CARIRI</option>
		<option>SÃO JOÃO DO RIO DO PEIXE</option>
		<option>SÃO JOÃO DO TIGRE</option>
		<option>SAO JOSE (BREJO DO CRUZ)</option>
		<option>SAO JOSE (PRINCESA ISABEL)</option>
		<option>SÃO JOSÉ DA LAGOA TAPADA</option>
		<option>SÃO JOSÉ DA MATA GRANDE (CAMPINA GRANDE)</option>
		<option>SÃO JOSÉ DE CAIANA</option>
		<option>SÃO JOSÉ DE ESPINHARAS</option>
		<option>SÃO JOSÉ DE MARIMBAS (CACHOEIRA DOS ÍNDIOS)</option>
		<option>SÃO JOSÉ DE PIRANHAS</option>
		<option>SÃO JOSÉ DE PRINCESA</option>
		<option>SÃO JOSÉ DO BONFIM</option>
		<option>SÃO JOSÉ DO BREJO CRUZ</option>
		<option>SÃO JOSÉ DO SABUGI</option>
		<option>SÃO JOSÉ DOS CORDEIROS</option>
		<option>SÃO JOSÉ DOS RAMOS</option>
		<option>SÃO MAMEDE</option>
		<option>SÃO MIGUEL DE TAIPU</option>
		<option>SÃO PEDRO (SANTA CRUZ)</option>
		<option>SÃO SEBASTIÃO DE LAGOA ROÇA</option>
		<option>SÃO SEBASTIÃO DO UMBUZEIRO</option>
		<option>SÃO VICENTE DO SERIDÓ</option>
		<option>SAO VICENTE DO SERIDO OU SERIDO</option>
		<option>SAPÉ</option>
		<option>SERIDÓ (SÃO VICENTE DO SERIDÓ)</option>
		<option>SERIDO (SÃO VICENTE DO SERIDO, SERIDO)</option>
		<option>SERRA BRANCA</option>
		<option>SERRA DA RAIZ</option>
		<option>SERRA GRANDE</option>
		<option>SERRA REDONDA</option>
		<option>SERRARIA</option>
		<option>SERTÃOZINHO</option>
		<option>SERTAOZINHO (DUAS ESTRADAS)</option>
		<option>SOBRADO</option>
		<option>SOBRADO (SAPÉ)</option>
		<option>SOLÂNEA</option>
		<option>SOLEDADE</option>
		<option>SOSSEGO</option>
		<option>SOSSEGO (CUITE)</option>
		<option>SOUSA</option>
		<option>SUCURU (SERRA BRANCA)</option>
		<option>SUMÉ</option>
		<option>TACIMA</option>
		<option>TAMBAUZINHO (SANTA RITA)</option>
		<option>TANQUES (POÇO DANTAS)</option>
		<option>TAPEROÁ</option>
		<option>TAVARES</option>
		<option>TEIXEIRA</option>
		<option>TENÓRIO</option>
		<option>TENORIO (JUANZEIRINHO)</option>
		<option>TRIUNFO</option>
		<option>UIRAÚNA</option>
		<option>UMARI (SÃO JOÃO DO RIO DO PEIXE)</option>
		<option>UMBUZEIRO</option>
		<option>VÁRZEA</option>
		<option>VÁRZEA COMPRIDA (POMBAL)</option>
		<option>VÁRZEA NOVA (SANTA RITA)</option>
		<option>VAZANTE (DIAMANTE)</option>
		<option>VIEIRÓPOLIS</option>
		<option>VIEIRÓPOLIS (SOUSA)</option>
		<option>VISTA SERRANA</option>
		<option>ZABELE</option>
		<option>ZABELE (SÃO SEBASTIÃO DO UMBUZEIRO)</option>
		
	</select>
	
	</div>
	
	<div class="form-group">
	<label class="nomeResL">11. Nome do responsável pelo atrativo ou de quem pode lhe guiar até o local. *</label>
	<input class="form-control" type="text" name="nomeRes" value="${atrativo.nomeRes }" placeholder="Nome do responsável pelo atrativo">
	</div>
	
	<div class="form-group">
	<label class="emailResL">12. E-mail do responsável pelo atrativo ou de quem pode lhe guiar até o local. *</label>
	<input class="form-control" type="text" name="emailRes" value="${atrativo.emailRes }" placeholder="Contatos do responsável pelo atrativo (e-mail/telefone/instagram)">
	</div>
	
	<div class="form-group">
	<label class="fontL">17. Fonte das informações (Possíveis fontes de informação externas que utilizou para preencher este formulário: links de sites, documentos, etc. ) *</label>
	<input class="form-control" type="text" name="font" value="${atrativo.font }" placeholder="Informe a fonte de informação">
	</div>
	
	<div class="form-group">
	<label class="contResL">13. Telefone ou WhatsApp do responsável pelo atrativo ou de quem pode lhe guiar até o local *</label>
	<input class="form-control" type="text" name="contRes" value="${atrativo.contRes }" placeholder="Contatos para Agências de Receptivo ou Guias de Turismo">
	</div>

	<div class="form-group">
	<label>14. Outras informações relevantes sobre o atrativo turístico (Fique a vontade para acrescentar sites que falam sobre o atrativo ou perfis no Instagram/Facebook, por exemplo). *</label>
	<input class="form-control" type="text" name="outrasInfo" value="${atrativo.outrasInfo }" placeholder="Outras informações relevantes sobre o atrativo">
	</div>
	
	<div class="form-group">
	<label class="urlImgL">15. Fotos do atrativo turístico (Acrescente de 1 a 5 fotos do atrativo) *</label>
	<input class="form-control-file" type="file" value="${atrativo.urlImg }" name="urlImg">
	</div>
	
	<div class="form-group">
	
	<label>16. As fotos e informações do atrativo podem ser divulgadas em redes sociais, sites e aplicativos de turismo sem custos? *</label>
	<br>
	
	<div class="custom-control custom-radio">
  	<input type="radio" id="s" name="permissao" value="${atrativo.permissao }" class="custom-control-input">
  	<label class="custom-control-label" for="s" >Sim</label>
	</div>
	
	<div class="custom-control custom-radio">
  	<input type="radio" id="n" name="permissao" value="${atrativo.permissao }" class="custom-control-input">
  	<label class="custom-control-label" for="n" >Não</label>
	</div>
	</div>
	
	<div class="form-group">
	<label class="nomeCompResL">18. Nome completo do responsável pelo preenchimento deste<br>formulário *</label>
	<input class="form-control" type="text" value="${atrativo.nomeCompRes }" name="nomeCompRes" placeholder="Nome completo do responsável pelo preenchimento">
	</div>
	
	<div class="form-group">
	<label class="contResPreeL">19. Telefone ou WhatsApp do responsável pelo preenchimento deste formulário *</label>
	<input class="form-control" type="text" name="contResPree" value="${atrativo.contResPree }" placeholder="Contatos do responsável pelo preenchimento">
	</div>
	
	
	<div class="form-group">
	<label>20. Caso necessário, acrescente informações adicionais, como críticas ou sugestões ou oportunidades de melhorias.</label>
	<input class="form-control" type="text" name="infoAdicionais" value="${atrativo.infoAdicionais }" placeholder="Acrescente informações adicionais">
	</div>
	<div></div>

	<div class="form-group">
	
	<input class="btn btn-primary" type="submit" value="ENVIAR"></div>
	
	
	</form>

	</div>


</body>
</html>