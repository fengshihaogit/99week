<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
</head>
<body>
	<form action="" method="post">
		<textarea rows="5" cols="20" name="str">
		
		</textarea>
		<input type="button" value="提交" onclick="tj()">
	</form>
</body>
<script type="text/javascript">
	function tj(){
		$.post(
			"add.do",
			$("form").serialize(),
			function(obj){
				if( obj == 0){
					alert("输入字符")
				}
			}
		)		
	}
</script>
</html>