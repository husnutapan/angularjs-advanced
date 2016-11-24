<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js">
	
</script>
<script>
	var moduleApp = angular.module('modules2', []);
	moduleApp.controller('controllerModules2', function($scope) {
		$scope.lastName = "tapan2";
		$scope.newMethod2 = function() {
			alert($scope.lastName);
		}
	});
</script>

</head>
<body>

</body>
</html>