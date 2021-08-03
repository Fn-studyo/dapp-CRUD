// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract User {

    struct User {
        uint id,
        string name,
        uint age,
        bytes32 email
    }

    //store the data in the form of key-value pairs (users)
    mapping(address => User) private users;
    address[] private userIndex;

    //Add a new user
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
    function fetchUser() public returns (User user){}

}