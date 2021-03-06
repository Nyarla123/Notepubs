<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="title"><tiles:getAsString name="title" /></c:set>
<c:set var="css"><tiles:getAsString name="css" /></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${title}</title>
<link href="/css/member/inc/layout.css" type="text/css" rel="stylesheet" >
<link href="/css/member/${css}" type="text/css" rel="stylesheet" >
<script>
window.addEventListener('orientationchange', function(e){
    var isUpright = (window.orientation == 'portrait');
});
</script>
</head>

<body>
	<div id="header-section">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="body-section">
		<div id="aside-section">
			<tiles:insertAttribute name="aside" />
		</div>
		<div id="main-section">
			<tiles:insertAttribute name="main" />
		</div>
	</div>
	<div id="footer-section">
		<tiles:insertAttribute name="footer" />
	</div>
</body>

</html>