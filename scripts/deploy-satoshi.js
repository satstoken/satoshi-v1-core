const hre = require("hardhat");

async function main() {
  const deployer = await hre.ethers.getContractFactory("Satoshi");
  const token = await deployer.deploy();

  await token.deployed();

  console.log("Satoshi deployed to:", token.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
