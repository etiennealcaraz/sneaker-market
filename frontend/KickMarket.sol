pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/ownership/Ownable.sol";
import "./KickAuction.sol";

contract KickMarket is ERC721Full, Ownable {

    constructor() ERC721Full("KickMarket", "KICK") public {}

    using Counters for Counters.Counter;
    Counters.Counter token_ids;
    
    address payable xchange = msg.sender;

    mapping(uint => KickAuction) public auctions;

    modifier kickRegistered(uint token_id) {
        require(_exists(token_id), "Kick not registered!");
        _;
    }

    function registerKick(string memory uri) public payable onlyOwner {
        token_ids.increment();
        uint token_id = token_ids.current();
        _mint(xchange, token_id);
        _setTokenURI(token_id, uri);
        createAuction(token_id);
    }

    function createAuction(uint token_id) public onlyOwner {
        auctions[token_id] = new KickAuction(xchange);
    }

    function endAuction(uint token_id) public onlyOwner kickRegistered(token_id) {
        KickAuction auction = auctions[token_id];
        auction.auctionEnd();
        safeTransferFrom(owner(), auction.highestBidder(), token_id);
    }

    function auctionEnded(uint token_id) public view returns(bool) {
        KickAuction auction = auctions[token_id];
        return auction.ended();
    }

    function highestBid(uint token_id) public view kickRegistered(token_id) returns(uint) {
        KickAuction auction = auctions[token_id];
        return auction.highestBid();
    }

    function pendingReturn(uint token_id, address sender) public view kickRegistered(token_id) returns(uint) {
        KickAuction auction = auctions[token_id];
        return auction.pendingReturn(sender);
    }

    function bid(uint token_id) public payable kickRegistered(token_id) {
        KickAuction auction = auctions[token_id];
        auction.bid.value(msg.value)(msg.sender);
    }
}