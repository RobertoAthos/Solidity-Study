pragma solidity ^0.4.17;

contract inbox {
    string public message = 'Hi there!';

    function Inbox(string initialMessage) public {
        message = initialMessage;
    }

    function setMessage(string newMessage) public {
        message = newMessage;
    }
}
