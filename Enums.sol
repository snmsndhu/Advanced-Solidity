// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Normal Approach 
contract Normal {
mapping(uint256 => string) todos;

function addTask(uint256 id) public {
    todos[id] ="ToDo";
}

function updateStatus(uint256 id, string memory newStatus) public {
    todos[id] = newStatus;
}

function getStatus(uint256 id) public view returns (string memory) {
    return todos[id];
}
}

// Lets do it with Enums.

