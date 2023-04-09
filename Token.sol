// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WDS_token is ERC20{

    constructor(uint _supply) ERC20("WDS_token","WDS"){

        _mint(msg.sender, _supply); 

    }
}