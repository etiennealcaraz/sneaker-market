const SneakerMarket = artifacts.require("SneakerMarket");

contract("Shoe token", accounts => {
  it("Token metadata should be correct", async () => {
    let contract = await SneakerMarket.deployed();
    let name = await contract.name();
    let symbol = await contract.symbol();
    assert.equal(name, "SneakerMarket");
    assert.equal(symbol, "Shoe");
  });
});
