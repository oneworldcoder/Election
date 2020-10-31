pragma solidity >=0.4.0 <0.7.0;

contract Election {
    string public candidateName = "Candidate Name";

    function setCandidate(string memory _name) public {
        candidateName = _name;
    }

    
}
