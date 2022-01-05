// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList{
    uint public taskCount = 0; // this is variable for the whole file

    struct Task {
        uint id; //unit is unssigned int
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks; // key => the struct that we defined

    // here you don't need to say it to be public, but it doesn't want to work without it... what
    constructor() public {  
        createTask("Don't forget to feed the cat");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}