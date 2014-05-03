quiz = angular.module "quiz", ['ngRoute']

quizController = ($scope) ->
  $scope.categories = [
    {
      name: "The IT Department"
      questions: [
        {text: "Are there two or more people on your IT support staff?"}
        {text: "Do your IT professionals work well together?"}
        {text: "Is your head IT professional cool-headed and calm, especially under pressure?"}
        {text: "Do your IT professionals work remotely less than 20% of the time?"}
        {text: "Do your IT professionals take breaks during the day?"}
        {text: "Is the IT office neat and organized?"}
        {text: "Are your IT professionals expected to dress at the same level as other employees?"}
        {text: "Are your IT professionals working in IT because they enjoy it?"}
        {text: "Do your IT professionals use language appropriate for an office?"}
      ]
    }
    {
      name: "Interacting with Users"
      questions: [
        {text: "Do your IT professionals do weekly rounds?"}
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
        {text: "Are issues that require use of a user's computer worked on only when that user is absent?"}
        {text: "Are issues worked on in priority order?"}
        {text: "Can users easily see information about issues that affect them?"}
        {text: "Can management easily see a list of open issues?"}
      ]
    }
    {
      name: "IT Projects"
      questions: [
        {text: "Does every upgrade come with a cost/benefit analysis?"}
        {text: "Does every project come with a business case?"}
        {text: "Do projects include using beta-testers inside the organization?"}
        {text: "Do projects use some form of change control?"}
        {text: "Does every project, once deployed, have a way to gauge effectiveness?"}
      ]
    }
    {
      name: "Network Storage"
      questions: [
        {text: "Does your organization use some form of networked storage?"}
        {text: "Does the networked storage have room for data growth?"}
        {text: "Is the networked storage organized?"}
        {text: "Is the network storage backed up on-site?"}
        {text: "Is the network storage backed up off-site?"}
        {text: "Are backups encrypted?"}
        {text: "Is restoring data from backups regularly tested?"}
      ]
    }
    {
      name: "Maintenance"
      questions: [
        {text: "Does your organization use anti-virus software?"}
        {text: "Do your IT professionals do quarterly maintenance of all PCs?"}
        {text: "Does management have access to quarterly maintenance logs?"}
        {text: "In quarterly maintenance, are PCs (computer, monitor, keyboard) physically cleaned?"}
      ]
    }
    {
      name: "Company Policies and Plans"
      questions: [
        {text: "Does your company have an Internet Use Policy?"}
        {text: "Is the Internet Use Policy enforced?"}
        {text: "Do your IT professionals maintain a Disaster Plan?"}
        {text: "Does your company have a policy on using personal devices for work?"}
      ]
    }
    {
      name: "Infrastructure"
      questions: [
        {text: "Do your IT professionals maintain a wireless network for guests and clients?"}
        {text: "Is the wireless network secured with a password?"}
        {text: "Do your IT professionals keep track of company hardware on loan to users?"}
        {text: "Do your IT professionals keep loanable hardware organized and in good condition?"}
        {text: "When old computers are retired, do your IT professionals wipe all company data from them?"}

      ]
    }
    {
      name: "IT Professional Qualifications"
      questions: [
        {text: "Do your IT professionals have significant experience with Microsoft Office products?"}
        {text: "Do your IT professionals have significant experience with the operating systems you use?"}
        {text: "Do your IT professionals have programming experience?"}
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