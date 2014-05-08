slide = angular.module("slide", ['ngAnimate'])

slide.animation '.slide', ->
  NgHideClassName = 'ng-hide'
  return {
    beforeAddClass: (element, className, done) ->
      if className == NgHideClassName
        jQuery(element).slideUp(done);

    removeClass: (element, className, done) ->
      if className == NgHideClassName
        jQuery(element).hide().slideDown(done)
  }