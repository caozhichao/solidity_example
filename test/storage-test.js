const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Storage", function () {
  it("base type", async function () {
    const Storage = await ethers.getContractFactory("Storage");
    const storage = await Storage.deploy();
    await storage.deployed();


    // console.log(await ethers.provider.getStorageAt(storage.address,0))
    // console.log(await ethers.provider.getStorageAt(storage.address,1))
    // console.log(await ethers.provider.getStorageAt(storage.address,2))
    // console.log(await ethers.provider.getStorageAt(storage.address,3))
    // console.log(await ethers.provider.getStorageAt(storage.address,4))

    // console.log(ethers.utils.defaultAbiCoder.encode(['uint'], [0]))
    // const pos1 = ethers.utils.keccak256(ethers.utils.defaultAbiCoder.encode(['uint'], [0]))
    // console.log(pos1)
    // console.log(ethers.BigNumber.from(pos1).add(1).toHexString())
    // console.log(await ethers.provider.getStorageAt(storage.address,pos1))
    // console.log(await ethers.provider.getStorageAt(storage.address,"0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564"))

    // map location
    // console.log(ethers.utils.defaultAbiCoder.encode(['uint256','uint256'], [1,0]))
    console.log(ethers.utils.solidityPack(['uint256','uint256'], [1,0]))
    const pos = ethers.utils.keccak256(ethers.utils.solidityPack(['uint256','uint256'], [1,0]))
    console.log(pos)
    console.log(await ethers.provider.getStorageAt(storage.address,pos))
    // expect(await greeter.greet()).to.equal("Hello, world!");

    // const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // wait until the transaction is mined
    // await setGreetingTx.wait();

    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
