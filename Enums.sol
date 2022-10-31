// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Normal Approach 
// contract Normal {
// mapping(uint256 => string) todos;

// function addTask(uint256 id) public {
//     todos[id] ="ToDo";
// }

// function updateStatus(uint256 id, string memory newStatus) public {
//     todos[id] = newStatus;
// }

// function getStatus(uint256 id) public view returns (string memory) {
//     return todos[id];
// }
// }

// Lets do it with Enums.
contract Ennums {
enum Status {
    TODO,
    IN_PROGRESS,
    DONE,
    CANCELLED
}

mapping(uint256 => Status) todos;

function addTask(uint256 id) public {
    todos[id] = Status.TODO;
}

function markTaskInProgress(uint256 id) public {
    todos[id] = Status.IN_PROGRESS;
}

function getStatus(uint256 id) public view returns (Status){
    return todos[id];
}
}