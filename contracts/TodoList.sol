// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList{
    uint public taskCount = 0; // this is variable for the whole file

    struct Task {
        uint id; //unit is unssigned int
        string content;
        bool completed;
    }

    event TaskCreated(
        uint id, 
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    mapping(uint => Task) public tasks; // key => the struct that we defined

    // here you don't need to say it to be public, but it doesn't want to work without it... what
    constructor() public {  
        createTask("Don't forget to feed the cat");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false); //triggering events
    }

    function toggleCompleted(uint _id) public{
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}