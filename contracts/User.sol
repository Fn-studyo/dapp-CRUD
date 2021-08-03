// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract User {

    struct User {
        uint index,
        string name,
        uint age,
        bytes32 email
    }

    //store the data in the form of key-value pairs (users)
    mapping(address => User) private users;
    address[] private userIndex;

    function checkUser(address userAddress) public constant returns(bool isUser) {
        if(userIndex.length == 0) return false;

        return (userIndex[users[userAddress].index] == userAddress);
    }

    //Create a new user
    function addUser(
        address userAddress,
        string name,
        bytes32 userEmail,
        uint userAge,
    ) public returns (bool success){
        users[userAddress].name = name;
        users[userAddress].email = userEmail;
        users[userAddress].age = userAge;
        return true;
    }

    //Fetch user
    function fetchUser(address userAddress) constant returns(string name, bytes32 email, uint age){
        return (
            users[userAddress].name, 
            users[userAddress].email, 
            users[userAddress].age
        );
    }

    //Update a user
    function updateUser(
        address userAddress,
        bytes32 email,
        uint age
    ) public returns (bool success) {}

}