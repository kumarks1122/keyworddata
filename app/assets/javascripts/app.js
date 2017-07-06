var cmApp = angular.module('cmApp',[]);

cmApp.controller("appController", ["$scope","$http", "$httpParamSerializer", "$timeout",
  function($scope, $http, $httpParamSerializer, $timeout) {
  	$scope.actions = []
  	$scope.init = function() {
			$timeout(function() {
				$http.get('/action_list').then(function(resp) {
					$scope.actions = resp.data.data
					angular.forEach($scope.actions, function(val) {
						console.log(val)
						val.json_data = JSON.parse(val.json_data)
					})
				})
				$scope.init()
			}, 10)
  	}
  	$scope.init()
  }
])