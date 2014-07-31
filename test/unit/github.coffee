describe 'Github Model', ->
  $httpBackend = GitHub = null

  beforeEach module('angularTestingScaffoldApp')

  beforeEach inject( (_$httpBackend_, _GitHub_) ->
    $httpBackend = _$httpBackend_
    GitHub = _GitHub_
  )

  beforeEach ->
    $httpBackend.
      when(
        'GET',
        'https://api.github.com/users/eerwitt').
      respond(
        name: "Erik"
        location: "Berkeley")

  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'requests my personal details from github', ->
    success = jasmine.createSpy('success')
    error = (error) -> assert(error)

    GitHub.getUserInfo().then(success, error)

    $httpBackend.flush()

    expect(success).toHaveBeenCalledWith(name: "Erik", location: "Berkeley")
