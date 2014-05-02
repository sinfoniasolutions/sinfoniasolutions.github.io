quiz = angular.module "quiz", ['ngRoute']

quizController = ($scope) ->
  $scope.categories = [
    {
      name: "The IT Department"
      questions: [
        {text: "Are there two or more people in your IT department?"}
        {text: "Do the people in your IT department work well together?"}
        {text: "Is the head of your IT department cool-headed and calm, especially under pressure?"}
        {text: "Does your IT department work remotely 20% of the time or less?"}
        {text: "Is there at least one person in your IT department who is almost never interrupted by new issues?"}
        {text: "Do your IT professionals take breaks during the day?"}
        {text: "Is the IT office neat and organized?"}
        {text: "Do your IT professionals have programming experience?"}
        {text: "Are your IT professionals expected to dress at the same level as other employees?"}
        {text: "Are your IT professionals working in IT because they enjoy it?"}
        {text: "Do your IT professionals use language appropriate for an office?"}
      ]
    }
    {
      name: "Interacting with Users"
      questions: [
        {text: "Do your IT professionals do daily rounds?"}
        {text: "Are your IT professionals courteous?"}
        {text: "Do your IT professionals have the respect of your staff?"}
        {text: "Do your IT professionals have the respect of building staff?"}
        {text: "Do your IT professionals speak to users in person?"}
        {text: "Is their communication jargon-free and concise?"}
        {text: "Is somebody available from 9 to 5, every business day?"}
        {text: "Is somebody available in case of emergency?"}
      ]
    }
    {
      name: "Issue Management"
      questions: [
        {text: "When new issues arise, are they recorded quickly, without interrupting a user very much?"}
        {text: "Are issues that require use of a users computer worked on only when that user is absent?"}
        {text: "Are issues worked on in priority order?"}
        {text: "Can users easily see information about issues that affect them?"}
      ]
    }
    {
      name: "Interacting with Upper Management"
      questions: [
        {text: "Can management easily see a list of open issues?"}
        {text: "Does every project come with a business case?"}
        {text: "Does every project, once deployed, have a way to gauge effectiveness?"}
        {text: "Do projects use some form of change control?"}
      ]
    }
  ]

  $scope.responses = [
    {text:"No", points: 0, maxPoints: 2}
    {text:"Sort of", points: 1, maxPoints: 2}
    {text:"Yes", points: 2, maxPoints: 2}
  ]

  $scope.currentGrade = "0/0"

  $scope.gradeQuiz = () ->
    points = 0
    maxPoints = 0
    for category in $scope.categories
      for question in category.questions
        points += question.response?.points or 0
        maxPoints += question.response?.maxPoints or 0
    $scope.currentGrade = "#{points}/#{maxPoints}"

quiz.config ($routeProvider) ->
  $routeProvider.when('/quiz',
    templateUrl: '/partials/quiz-partial.html',
    controller: quizController,
  ).otherwise(
    redirectTo: "/quiz"
  )