
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado da Calculadora</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Space+Mono:wght@400;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="receberstyle.css">
</head>
<body>
	<header>
		<img class="img" src="logo.png">
		<nav>
			<ul class="menu">
				<li><a href="home.html">Home</a></li>
				<li>  |  </li>
				<li><a href="decimalParaBinario.html">Decimal para Binario, Hexadecimal e Octa</a></li>
				<li>  |  </li> 
				<li><a href="imc.html">IMC</a></li>
				<li>  |  </li>
				<li><a href="calculadora.html">Calculadora</a></li>
			</ul>
		</nav>
			<ul class="conta">
			<li>Login</li>
			<li>Criar Conta</li>
		</ul>
	</header>

	<main>
	<div class="caixa">
<form action = "receber.jsp">
	<ul>
		<li class="info">Informe seus Dados Abaixo</li>
		<li class="li1">Informe seu Peso: (use .)</li>
		<li><input class="li2" type="text" id="peso" name="peso"></li>
		<li class="li1">Informe seu Altura:</li>
		<li><input class="li2" type="text" id="altura" name="altura"></li>
	</ul>
		<input class="enviar" type ="submit" value = "Enviar">
			
	    <%

		    String peso = request.getParameter("peso");
		    String altura = request.getParameter("altura");
		    float valorpeso = Float.parseFloat(peso);
		    float valoraltura = Float.parseFloat(altura);
		    float resultado = valorpeso / (valoraltura * valoraltura);
		    %>
		    <%
		    out.print("A altura informada foi: " + altura);		    
		    %>
		    
		    <br>		    
		    <%
		    out.print("O peso informado foi: " + peso);
		    %>
		    
		    
		     <br>
		    <%
		    out.print("Resultado: " + resultado);
			%>		
		
</form>	
</div>


	</main>

	<footer>
		<ul class="contatos">
			<li>Email</li>
			<li>Telefone</li>
			<li>Instagram</li>
			<li>Twitter</li>
		</ul>
		
	</footer>

</body>
</html>