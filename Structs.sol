// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Struct {
    
enum Status {
    TODO,
    IN_PROGRESS,
    DONE,
    CANCELLED
}

struct Task {
    string title;
    string description;
    Status status;
    bool set;
}
mapping(uint256 => Task) tasks;

function deleteTask( uint256 id) public {
    delete tasks[id];
}
function editTaskTitle(uint256 id, string memory newTitle) public {
    tasks[id].title = newTitle;
}
function addTask(uint256 id, string memory title, string memory description) public {
    tasks[id] = Task({
        title: title,
        description: description,
        status: Status.TODO,
        set: true
    });
}
}