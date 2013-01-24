basePath = '../';

files = [
  ANGULAR_SCENARIO,
  ANGULAR_SCENARIO_ADAPTER,
  'test/e2e/**/*.js',
  'test/e2e/**/*.coffee'
];

autoWatch = false;

browsers = ['Chrome'];

singleRun = true;

urlRoot = '/__testacular/';

proxies = {
  '/': 'http://localhost:3333/'
};

// compile coffee scripts
preprocessors = {
  '**/*.coffee': 'coffee'
};
