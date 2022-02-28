//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    // public mean the function can be read from outside of the smart contract
    // view mean read-only
    function greet() public view returns (string memory) {
        return greeting;
    } 

    // when this function is called and someone invokes that, 
    // they need to pay gas fee for this transaction to be written
    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
