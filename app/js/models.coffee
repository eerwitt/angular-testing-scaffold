angularTestingScaffoldModels = angular.module "angularTestingScaffoldModels", []

angularTestingScaffoldModels.factory "GitHub", ["$http", "$q", ($http, $q) ->
  class GitHub
    constructor: (@name, @location) ->

    @getUserInfo: ->
      defer = $q.defer()

      success = (response) ->
        details = new GitHub(
          response.data.name,
          response.data.location)

        defer.resolve details

      error = (errors) ->
        defer.reject errors

      $http(method: "GET", url: "https://api.github.com/users/eerwitt").then(success, error)

      defer.promise
]
