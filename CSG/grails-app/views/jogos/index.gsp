<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Facadas CS</title>
		<g:javascript library="jquery" />
	</head>
	<body>		
		
		<div id="divLista">
			<g:render template="lista" collection="[matadores:matadores]"></g:render>
		</div>
		
		<div id="divForm" ></div>
		
	</body>
</html>