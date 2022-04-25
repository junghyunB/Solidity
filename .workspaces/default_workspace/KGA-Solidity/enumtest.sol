pragma solidity ^0.4.19;

contract Enumtest {
    enum ActionChoice {GoLeft, GoRight, GoStrait, sitStill}
    ActionChoice choice;
    ActionChoice defaultChoice = ActionChoice.GoStrait;

    function setGoStrait() public {
        choice = ActionChoice.GoStrait;
    }

    function setGoLeft() public {
        choice = ActionChoice.GoLeft;
    }

        function setGoRight() public {
        choice = ActionChoice.GoRight;
    }
        function setsitStill() public {
        choice = ActionChoice.sitStill;
    }
    function getChoice() public view returns(ActionChoice) {
        return choice;
    }
    function getDefaultChoice() public view returns(ActionChoice) {
        return defaultChoice;
    }

}