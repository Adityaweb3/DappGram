const MyPet = artifacts.require('Pet')
module.exports = function (deployer) {
  deployer.deploy(MyPet)
}