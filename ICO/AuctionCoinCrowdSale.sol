pragma solidity ^0.5.0;

import "./AuctionCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

contract AuctionCoinSale is Crowdsale, MintedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {
    constructor(
        uint256 rate,               // rate, in TKNbits
        address payable wallet,     // wallet to send Ether
        AuctionCoin token,          // the token
        uint256 goal,               // the minimum goal (500 ETH), in wei
        uint256 openingTime,
        uint256 closingTime
    )
        
        TimedCrowdsale(openingTime, closingTime)
        RefundableCrowdsale(goal)
        Crowdsale(rate, wallet, token)
        public {}
}
    
contract AuctionCoinSaleDeployer {
    address public token_sale_address;
    address public token_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet,  //this addrss will receive all Ether raised by the sale
        uint goal
        ) 
            public 
        {
            // create the AuctionCoin and keep its address handy
            AuctionCoin token = new AuctionCoin(name, symbol, 0);
            token_address = address(token);
            
            // create the AuctionCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 4 weeks
            AuctionCoinSale tokenSale = new AuctionCoinSale(1, wallet, token, goal, now, now + 4 weeks);
            token_sale_address = address(tokenSale);

        
            // make the AuctionCoinSale contract a minter, then have the AuctionCoinSaleDeployer renounce its minter role
            token.addMinter(token_sale_address);
            token.renounceMinter();
    }
}