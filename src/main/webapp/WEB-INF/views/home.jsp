<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Bootpag -->
<script
	src="http://cdn.rawgit.com/botmonster/jquery-bootpag/master/lib/jquery.bootpag.min.js"></script>
</head>
<body class="container">
	<h1 class="text-center">STUDENT MANAGER!</h1>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date of Birth</th>
				<th>Score</th>
				<th>Option</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
			<tr>
				<td>1</td>
				<td>Tấn Lộc</td>
				<td>Võ</td>
				<td>02/11/1994</td>
				<td>8.2</td>
				<td><a href="#"><i class="fa fa-pencil"></i></a>&nbsp;<a
					href="#"><i class="fa fa-trash-o"></i></a></td>
			</tr>
		</tbody>
	</table>
	<i id="page-selection"></i>
	<script type="text/javascript">
		$("#page-selection").bootpag({
			total: 10,
			maxVisible: 5,
			page: 1
		}).on("page", function(event, num) {
			alert("Num: "+num);
		})
	</script>
</body>
</html>
