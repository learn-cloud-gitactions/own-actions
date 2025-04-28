const core = require('@actions/core');
const github = require('@actions/github');

try {
  core.info('Hello world!');
  core.warning('This is a warning!');
  core.error('This is an error!');
  core.debug('This is a debug message!');

  const name = core.getInput("who_to_greet", { required: true });

  console.log(`Hello ${name}!`);
  core.setOutput("time", new Date().toTimeString());

  core.exportVariable("GREETED", "true");

}catch (error) {
  core.setFailed(error.message);
}