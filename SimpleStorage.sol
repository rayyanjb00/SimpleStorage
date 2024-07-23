// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;     //write the solidity version




contract SimpleStorage{

    //if no value is added "0" is added as a default value.
    
    uint256  myfavoriteNumber;

    // uint256[] listofmyFavoriteNumber; //arrays or list

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public myFriend = Person({favoriteNumber: 7, name: "Patrick"});

    Person[] public listofPeople; // for multiple inputs

    //connecting name with number
    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;

    }
    
    //view function doesn't allow any modification
    //pure function doesn't allow reading from state

    function retrieve() public view returns(uint256){
    
        return myfavoriteNumber;
    }

    //calldata, memory -> means variable exists temporarily however memory variable can be manipulated.
    //storage variable is permanent variable and can be modified

    function addPerson( string memory _name, uint256 _favoriteNumber) public {
        
        listofPeople.push(Person(_favoriteNumber, _name));
        
        //getting number by names
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }
    
} 

