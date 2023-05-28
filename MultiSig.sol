// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MultiSig {
    address[] public owners; // Array to store the addresses of the wallet owners
    uint public transactionCount; // Counter for tracking the total number of transactions
    uint public required; // Number of required confirmations for a transaction

    struct Transaction {
        address destination; // Destination address of the transaction
        uint value; // Value of the transaction
        bool executed; // Flag indicating whether the transaction has been executed
        bytes data; // Additional data for the transaction
    }

    receive() external payable {
        // Code to handle the received Ether
    }

    function executeTransaction(uint _txId) public {
        require(isConfirmed(_txId)); // Check if the transaction is confirmed by the required number of owners
        Transaction storage _tx = transactions[_txId]; // Get the transaction by ID
        (bool success, ) = _tx.destination.call{ value: _tx.value }(_tx.data); // Execute the transaction by calling the destination address with the specified value and data
        require(success, "Failed to execute transaction"); // Check if the transaction execution was successful
        _tx.executed = true; // Mark the transaction as executed
    }

    function isConfirmed(uint _txId) public view returns(bool){
        return getConfirmationsCount(_txId) >= required; // Check if the number of confirmations for a transaction is greater than or equal to the required number
    }

    mapping(uint => Transaction) public transactions; // Mapping to store transactions by ID
    mapping(uint => mapping(address => bool)) public confirmations; // Mapping to store confirmation status of owners for each transaction

    function getConfirmationsCount(uint transactionId) public view returns(uint) {
        uint count;
        for(uint i = 0; i < owners.length; i++) {
            if(confirmations[transactionId][owners[i]]) {
                count++;
            }
        }
        return count; // Return the count of confirmations for a given transaction
    }

    function isOwner(address addr) private view returns(bool) {
        for(uint i = 0; i < owners.length; i++) {
            if(owners[i] == addr) {
                return true; // Check if the given address is one of the owners
            }
        }
        return false;
    }

    function confirmTransaction(uint transactionId) public {
        require(isOwner(msg.sender)); // Check if the sender is one of the owners
        confirmations[transactionId][msg.sender] = true; // Mark the sender's confirmation for the transaction
        if(isConfirmed(transactionId)){
            executeTransaction(transactionId); // If the transaction is confirmed, execute it
        }
    }

    function addTransaction(address destination, uint value, bytes memory data) internal returns(uint) {
        transactions[transactionCount] = Transaction(destination, value, false, data); // Add a new transaction to the transactions mapping
        transactionCount += 1; // Increment the transaction count
        return transactionCount - 1; // Return the ID of the added transaction
    }

    constructor(address[] memory _owners, uint _confirmations) {
        require(_owners.length > 0);
        require(_confirmations > 0);
        require(_confirmations <= _owners.length);
        owners = _owners; // Initialize the owners array with the provided addresses
        required = _confirmations; // Set the required number of confirmations
    }

    function submitTransaction(address _dest, uint _val, bytes memory data) external {
        confirmTransaction(addTransaction(_dest, _val, data)); // Submit a new transaction and confirm it immediately
    }
}
