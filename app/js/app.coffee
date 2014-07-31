angularTestingScaffoldApp = angular.module 'angularTestingScaffoldApp', [
  'ngRoute',
  'angularTestingScaffoldControllers',
  'angularTestingScaffoldModels']

angularTestingScaffoldApp.config ['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/github',
    templateUrl: 'partials/github.html'
    controller: 'GitHubController').otherwise(
      redirectTo: '/github'
    )
]
