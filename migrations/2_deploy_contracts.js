var Dir = artifacts.require("./Dir.sol");

module.exports = function(deployer) {
  const name = "test name";
  const report_type = "test type";
  const desc = "test desc";
  deployer.deploy(Dir, name, report_type, desc);
};
