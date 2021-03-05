const SneakerMarket = artifacts.require("SneakerMarket");

module.exports = function(deployer) {
  deployer.deploy(SneakerMarket)
  .then(async (contract) => {
    await contract.registerShoe('{"name":"Jordan 1 Retro High Dark Mocha Size 10","image":"https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Dark-Mocha/Images/Air-Jordan-1-Retro-High-Dark-Mocha/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1608736454&w=1000.jpg"}');
    await contract.registerShoe('{"name":"Tharsis volcanoes","image":"https://cdn.mos.cms.futurecdn.net/DKavvKEEdrtRJhfKXndKeW-650-80.jpg"}');
    
  });
};
