// Generated by CoffeeScript 1.7.1
(function() {
  var quote;

  quote = angular.module("quote", ['slide']);

  quote.controller("quoteController", function($scope) {
    $scope.computers = 1;
    $scope.roles = [
      {
        name: "Primary IT Support",
        baseRate: 60
      }, {
        name: "Secondary IT Support",
        baseRate: 30
      }, {
        name: "Project Consulting",
        baseRate: 20
      }
    ];
    return $scope.role = $scope.roles[0];
  });

}).call(this);

//# sourceMappingURL=quote.map
