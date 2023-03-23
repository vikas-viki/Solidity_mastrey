// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract My_bank_account {

    event depositSuccessful(string message);
    event withdrawSuccessful(string message);

    function deposit() external payable {
        emit depositSuccessful("deposit suceesful");
    }

    function withdraw(uint256 _amount) external payable{

        _amount = _amount * 1 ether;
        payable(msg.sender).transfer(_amount);

        emit withdrawSuccessful("Withdrawal suceesful");

    }

}