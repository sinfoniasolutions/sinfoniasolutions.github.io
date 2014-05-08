quote = angular.module("quote", ['slide'])

quote.controller "quoteController", ($scope) ->
  $scope.computers = 1
  $scope.roles = [
    {name:"Primary IT Support", baseRate: 60}
    {name:"Secondary IT Support", baseRate: 30}
    {name:"Project Consulting", baseRate: 20}
  ]
  $scope.role = $scope.roles[0]