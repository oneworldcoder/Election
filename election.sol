pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;


contract Election {

    struct candidate {
        string name;
        string politicalParty;
        string state;
        uint age;
        uint height;
    }
    
    candidate[] public candidateList;
    
    mapping(address => candidate) public candidates;
    

    function setCandidate(string memory name, string memory politicalParty, string memory state, uint age, uint height) public {
        address creator = msg.sender;
        
        candidate memory newCandidate;
        newCandidate.name = name;
        newCandidate.politicalParty = politicalParty;
        newCandidate.state = state;
        newCandidate.age = age;
        newCandidate.height = height;
        candidates[creator] = newCandidate;
        newCandidate.push(candidate[]);
    }
    
    function getCandidate() public view returns (string memory name, string memory politicalParty, string memory state, uint age, uint height) {
        address creator = msg.sender;
        return (candidates[creator].name, candidates[creator].politicalParty, candidates[creator].state, candidates[creator].age, candidates[creator].height);
    }
    
    function getCandidateList() public view returns (candidate [] memory) {
        return candidateList;
    }

    
}
