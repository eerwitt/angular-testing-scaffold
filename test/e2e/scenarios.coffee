describe 'Angular Test Scaffold', ->
  it 'displays my GitHub name', ->
    browser.get('app/index.html').then ->
      expect(element(By.binding('github.name')).getText()).toBe('Erik')

  it 'displays my GitHub location', ->
    browser.get('app/index.html').then ->
      expect(element(By.binding('github.location')).getText()).toBe('Berkeley')
