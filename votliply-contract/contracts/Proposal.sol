// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";

///@title Proposal
///@author Olayinka
contract Proposal is Ownable {
    ///@todo add natspec comments to functions in this smart contract
    struct ProposalDetails {
        address _creator;
        string _decision;
        uint256 _yesCount;
        uint256 _noCount;
    }
    ProposalDetails proposalDetails;

    constructor(string memory _decision) {
        proposalDetails._decision = _decision;
        proposalDetails._creator = msg.sender;
        proposalDetails._yesCount = 0;
        proposalDetails._noCount = 0;
    }

    function getProposal()
        public
        view
        virtual
        returns (string memory _decision)
    {
        _decision = proposalDetails._decision;
        return _decision;
    }
}