flatPricing = angular.module("flatPricing", [])

flatPricing.controller "flatPricingController", ($scope) ->
  $scope.computers = 1
  $scope.baseRate = 100
  $scope.totalRate = $scope.baseRate