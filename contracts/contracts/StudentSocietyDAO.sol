// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment the line to use openzeppelin/ERC20
// You can use this dependency directly because it has been installed already
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract StudentSocietyDAO {

    uint256 constant public SUGGEST_AMOUNT = 10;
    // 每次花费10个币去提议
    // use a event if you want
    event ProposalInitiated(uint32 proposalIndex);
    // 事件：可以在函数体内触发事件（emit），并记录在回执之中

    struct Proposal {      // 结构体
        uint32 index;      // index of this proposal
        address proposer;  // who make this proposal
        uint256 startTime; // proposal start time
        uint256 duration;  // proposal duration
        string name;       // proposal name
        string text;       // proposal content
    }

    ERC20 studentERC20;
    mapping(uint32 => Proposal) proposals; // A map from proposal index to proposal

    // ...
    // TODO add any variables if you want

    constructor() {
        // maybe you need a constructor
        studentERC20 = new ERC20("name", "symbol");
        _mint(msg.sender,1000);
        //在构造的时候就自动分发1000的代币
    }

    function suggest() public{
        ERC20.transferFrom(msg.sender,address(this),SUGGEST_AMOUNT);
        // 每次提出提议都要花费10个代币
        Proposal pro;

    }

    function helloworld() pure external returns(string memory) {
        return "hello world";
    }

    // ...
    // TODO add any logic if you want
}
