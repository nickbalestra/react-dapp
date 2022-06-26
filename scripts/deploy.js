const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const Greeter = await hre.ethers.getContractFactory("Greeter");
  const greeter = await Greeter.deploy("Hello, World!");

  const NBXToken = await hre.ethers.getContractFactory("NBXToken");
  const nbxToken = await NBXToken.deploy("NBX Token", "NBX");

  await greeter.deployed();
  await nbxToken.deployed();

  console.log("Greeter deployed to:", greeter.address);
  console.log("Token deployed to:", nbxToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
