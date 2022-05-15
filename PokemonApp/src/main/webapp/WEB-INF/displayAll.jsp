<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DisplayAllPokemon</title>
<link href="show.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:forEach items="${pokeList }" var="pokemon">
	<a href="getPokemon_id.do?id= ${pokemon.id } " class = "button"  >${pokemon.name} </a><br>
</c:forEach>
<div>
		<a href="goHome.do" class="button">Home</a>
	</div>
</body>
</html>