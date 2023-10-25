
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado da Calculadora</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Space+Mono:wght@400;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="resultadostyle.css">
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
	    <%
    String svalorA = request.getParameter ("ValorA");
    String svalorB = request.getParameter ("ValorB");
    String svalorC = request.getParameter ("ValorC");
    String sopcao = request.getParameter ("opcao");
    
    double dvalorA = Double.parseDouble(svalorA);
    double dvalorB = Double.parseDouble(svalorB);
    double dvalorC = Double.parseDouble(svalorC);
    double resultado = 0;

        if (sopcao.equals("+")){
            resultado = dvalorA + dvalorB + dvalorC;
        }else if(sopcao.equals("-")){
            resultado = dvalorA - dvalorB - dvalorC;
        }else if(sopcao.equals("*")){
            resultado = dvalorA * dvalorB * dvalorC;
        }else if(sopcao.equals("/")){
            resultado = dvalorA / dvalorB / dvalorC;
        
        }

    out.print ("Resultado: <br>"+resultado);

%>


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