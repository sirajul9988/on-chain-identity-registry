async function issueSBT(contractAddress, recipient) {
    const SBT = await ethers.getContractAt("IdentitySBT", contractAddress);
    const tx = await SBT.issueIdentity(recipient);
    await tx.wait();
    console.log(`Identity issued to ${recipient}`);
}
