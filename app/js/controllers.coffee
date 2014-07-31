angularTestingScaffoldControllers = angular.module 'angularTestingScaffoldControllers', []

angularTestingScaffoldControllers.controller 'GitHubController', ['$scope', 'GitHub', ($scope, GitHub) ->
  $scope.github = {}

  success = (githubInfo) ->
    $scope.github = githubInfo

  failure = (error) ->
    console.error "Unable to load GitHub info."
    console.error error

  GitHub.getUserInfo().then success, failure
]
