<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<style>
table, th, td {
    border: 1px solid black;
    text-align: left;
    width:30%
}
</style>
<body>
  <div>
  <g:if test="${matadores.size() > 0}">
	<table>
	<tr>
		<th>Jogador</th>
		<th>Vítima</th>
		<th>Facadas</th>
	</tr>	
	<g:each var="matador" in="${matadores}">
		<tr>
			<td>${matador}</td>
			<table>
				<g:each var="vit" in="${vitTotal}">
					<tr>			
						<td>${vit}</td>			
					</tr>	
				</g:each>			
			</table>
			
		</tr>
	</g:each>
	</table>
</g:if>
<g:else>
	Não há produtos.
</g:else>
  
  </div>
</body>
</html>