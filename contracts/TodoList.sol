pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount = 0;

    //declaring a generic called Task
    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    //placing Task in blockchain storage
    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("Very first task");
    }

    function createTask(string memory _content) public {
        taskCount++;

        //populating the mapped tasks at index taskCount with a new struct Task
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
