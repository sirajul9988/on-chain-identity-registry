async function main() {
    const Identity = await ethers.getContractFactory("IdentitySBT");
    const id = await Identity.deploy();
    console.log("SBT Registry deployed to:", await id.getAddress());
}
