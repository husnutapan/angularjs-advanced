<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js">
	
</script>
<script>
  
	  var app = angular.module('myApp', []);
	  app.controller('controller', function($scope) {
			  $scope.lastName = "tapan";						  
			  $scope.newMethod = function() {
					 alert($scope.lastName);
			  }
		  
	  });

	</script>

</head>
<body>

	<h1>AngularJS two-way-databinding</h1>

	<div ng-app="myApp" ng-controller="controller">
  	<strong>First name:</strong> {{firstName}}<br />
  	<strong>Last name:</strong> <span ng-bind="lastName"></span>
  	<br/>
  	<br/>
  	
  	
  	
  	<label>Set the first name: <input type="text" ng-model="firstName" ng-change="newMethod()"/></label><br />
  	<label>Set the last name: <input type="text" ng-model="lastName"/></label>
  	<br/>
  	
    <a href="" ng-click='newMethod()'>click me</a><br/>
    <button ng-click="newMethod()">click me</button>   
	<br/><br/>	
	<select ng-model="selectedValue">
			<option value="test1">test1</option>
			<option value="test2">test2</option>
			<option value="test3">test3</option>
	</select> {{selectedValue}}<br/><br/>
	
	<input type="radio" name="selectedColor" value="Red" ng-model="selectedColor">Red</input>
	<input type="radio" name="selectedColor" value="Green" ng-model="selectedColor">Green</input>
	<span style="color:{{selectedColor}}">{{selectedColor}}</span>
		
	<br/><br/>
	CheckBox1 <span ng-bind="checkBox1"></span><input type="checkbox" value="testCheckBox1" ng-model="checkBox1"><br/>
	CheckBox2 <span ng-bind="checkBox2"></span><input  type="checkbox" value="testCheckBox2" ng-model="checkBox2"><br/>
	
	</div>
</html>