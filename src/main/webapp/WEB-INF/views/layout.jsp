<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="author" content="Andrey Khomutov"/>
    <meta name="company" content="Best2pay"/>

    <title><tiles:insertAttribute name="title" ignore="true"/></title>
    <tiles:insertAttribute name="stylecss"/>
    //add jqGrid
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list page</title>
    <link rel="stylesheet" type="text/css" media="screen"
          href="<%= request.getContextPath() %>/resources/jqgrid/jquery-ui.css"/>
    <link rel='stylesheet' type='text/css' href='<%= request.getContextPath() %>/resources/jqgrid/ui.jqgrid.css'>

    <script src="<%= request.getContextPath() %>/resources/jqgrid/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/resources/jqgrid/grid.locale-en.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/resources/jqgrid/jquery.jqGrid.min.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/resources/jqgrid/JsonXml.js" type="text/javascript"></script>
</head>

<body>
<tiles:insertAttribute name="header"/>
<tiles:insertAttribute name="body"/>
<tiles:insertAttribute name="footer"/>
<tiles:insertAttribute name="scriptjs"/>
</body>

</html>