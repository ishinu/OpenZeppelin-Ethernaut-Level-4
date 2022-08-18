const { ethers } = require("hardhat");

var instanceAddress = '0xC68f749cA7370768189C994980A913515872cC52';     // Our Ethernaut level 4 Contract instance address.

async function main(){
  console.log("Deploying Mediator Contract...");
  const Mediator = await ethers.getContractFactory("Mediator");
  const mediator = await Mediator.deploy(instanceAddress);
  await mediator.deployed();
  console.log("Mediator Contract deployed at : ",mediator.address);

  console.log("Deploying Attack Contract...");
  const Attack = await ethers.getContractFactory("Attack");
  const attack = await Attack.deploy(mediator.address);
  await attack.deployed();
  console.log("Attack Contract deployed at : ",attack.address);
}

main();