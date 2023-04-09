// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface Counter {
    function getCount() external view returns (uint256);
    function increment() external;
    function decrement() external;
}

contract CounterInterface {
    uint256 public counter;

    function inc_getCount(address _contractAddress) public {

        Counter(_contractAddress).increment();

        counter = Counter(_contractAddress).getCount();
    }
}
