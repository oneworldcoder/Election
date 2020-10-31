pragma solidity >=0.4.0 <0.7.0;

contract Election {

    struct candidate {
        string name;
        uint age;
        uint height;
    }
    
    mapping(address => candidate) public candidates;
    

    function setCandidate(string memory name, uint age, uint height) public {
        address creator = msg.sender;
        
        candidate memory newCandidate;
        newCandidate.name = name;
        newCandidate.age = age;
        newCandidate.height = height;
        candidates[creator] = newCandidate;
    }
    
    function getCandidate() public view returns (string memory name, uint age, uint height) {
        address creator = msg.sender;
        return (candidates[creator].name, candidates[creator].age, candidates[creator].height);
    }

    
}
