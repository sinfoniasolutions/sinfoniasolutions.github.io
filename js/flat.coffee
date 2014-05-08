flatPricing = angular.module("flatPricing", ["ngAnimate", "slide"])

flatPricing.controller "flatPricingController", ($scope) ->
  $scope.show = {}
  $scope.showContact = () ->
    $scope.show.contact = true
    setTimeout ()->
      window.scrollTo(0,document.body.scrollHeight)
    , 50