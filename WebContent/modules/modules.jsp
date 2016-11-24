<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js">
	
</script>
<script>
	var app = angular.module('modules', [ 'modules2' ]);

	app.controller('controllerModule1', function($scope) {
		$scope.lastName = "tapan1";
		$scope.newMethod = function() {
			alert($scope.lastName);
		}

	});
</script>

</head>
<body ng-app="modules">
	<div ng-controller="controllerModule1">
		<input ng-change="newMethod()" ng-model="lastName">
	</div>
</body>
</html>