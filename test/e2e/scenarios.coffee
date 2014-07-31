describe "Angular Test Scaffold", ->
  it "displays my GitHub name", ->
    browser.get("app/index.html").then ->
      expect(element(By.css("#githubName")).getText()).toBe("Erik Erwitt")

  it "displays my GitHub location", ->
    browser.get("app/index.html").then ->
      expect(element(By.css("#githubLocation")).getText()).toBe("Berkeley California")
