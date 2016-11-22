<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js">
	
</script>
<script type="text/javascript">
	'use strict';
	var myApp = angular.module('myApp', []).controller('Controller',
			[ '$scope', function($scope) {
				$scope.firstName = 'Husnu';
				$scope.keyupFunction = function() {
					alert($scope.firstName);
				}
			} ]);
</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="Controller">
	<input ng-model="firstName" ng-change="keyupFunction()">
	{{firstName}}
</body>