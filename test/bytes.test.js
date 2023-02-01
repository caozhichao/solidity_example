const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("bytes_test", function () {
  it("bytes_test", async function () {
    const bytes_test = await ethers.getContractFactory("bytes_test");
    const c = await bytes_test.deploy();
    await c.deployed();

    console.log(await c.MINT_ROLE())
    console.log(await c.MINT_ROLE2())
    // expect(await greeter.greet()).to.equal("Hello, world!");

    // const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // // wait until the transaction is mined
    // await setGreetingTx.wait();

    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
