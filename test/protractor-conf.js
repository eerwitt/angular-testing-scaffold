exports.config = {
  allScriptsTimeout: 11000,

  specs: [
    'e2e/*.coffee'
  ],

  capabilities: {
    'browserName': 'chrome'
  },

  chromeOnly: true,

  baseUrl: 'http://localhost:8000/',

  framework: 'jasmine',

  // by is reserved in coffee script
  // http://stackoverflow.com/questions/24098434/protractor-tests-in-coffeescript-producing-syntaxerror-unexpected-by
  onPrepare: function() {
    global.By = global.by;
  },

  jasmineNodeOpts: {
    defaultTimeoutInterval: 30000
  }
};
