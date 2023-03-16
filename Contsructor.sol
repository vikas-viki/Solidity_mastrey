// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract const{

    address public owner;
    uint public num = 0;
    uint public value = 0;

    // Runs only once when the contract is deployed.
    constructor( uint _num ) {
        owner = msg.sender;
        num = _num;
    }

    // Payable functions can only recieve money.
    function getMoney() external payable {

        // Continues executing the function if the condition `msg.sender == owner`
        // becomes true else returns the message & reverts the transaction.
        require(msg.sender == owner, "Only owner can send message");

        value = msg.value;
    }
}