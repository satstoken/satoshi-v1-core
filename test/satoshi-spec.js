const { expect } = require("chai");

describe("Satoshi", function() {
	var token;

	beforeEach(async function() {
    const deployer = await ethers.getContractFactory("Satoshi");
    token = await deployer.deploy();
	});

	// test some constants
  it("name, version, symbol, decimals, supplyCap, balanceOf, WBTC, DOMAIN_SEPARATOR, DOMAIN_TYPE_HASH, PERMIT_TYPE_HASH", async function() {
		expect(await token.name()).to.equal('Satoshi');
		//... TODO
  });
});
