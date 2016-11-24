<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js">
	
</script>
<script>
	var app = angular.module('filterApp', []);
	app.controller('filterController', function($scope) {
		$scope.employees = [ {
			name : 'Husnu',
			surname : 'TAPAN'
		}, {
			name : 'Enes',
			surname : 'ISMAILOGLU'
		}, {
			name : 'Mehmet',
			surname : 'KERSE'
		}, {
			name : 'Oguzhan',
			surname : 'YILMAZ'
		} ];

		$scope.boss = {
			name : 'Larry',
			surname : 'Page',
			company : 'Google Inc.'
		};

		$scope.currentDate = new Date();
	});

	app.filter('customFilter', function() {

		return function(filterInput, optionalValue1, optionalValue2,
				optionalValue3) {

			var filterValue;

			filterValue = "Filter Result:" + filterInput + " " + optionalValue1
					+ " " + optionalValue2;

			return filterValue;
		}
	});
</script>
</head>
<body ng-app="filterApp">
	<div ng-controller="filterController">
		<div ng-repeat="employee in employees | limitTo:3 | orderBy:'name'">{{employee.name
			| uppercase}}</div>


		<div>{{currentDate | date:'MM/dd/yyyy'}}</div>


		<div>
			<h2>Custom Filter</h2>
			{{"test" | customFilter}} <br /> {{"test" | customFilter
			:"parameter1": "parameter2"}}
		</div>


	</div>
</body>
</html>