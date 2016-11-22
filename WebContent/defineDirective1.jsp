<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js">
	
</script>
<script type="text/javascript">
	var myApp = angular.module('myApp', []).controller('Controller',
			[ '$scope', function($scope) {
				$scope.student = {
					name : 'Husnu TAPAN',
					university : 'Gazi University'
				};
			} ]).directive('student', function() {
		return {
			template : 'Name: {{student.name}} University: {{student.university}}'
		};
	});
</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="myApp">
	<div ng-controller="Controller">
		<div student></div>
	</div>
</body>
</html>