// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ProposalVote.sol";  // Assuming ProposalVote is in the same directory

contract ProposalVoteFactory {
    ProposalVote[] public proposalsContracts;

    event ProposalVoteCreated(address proposalVoteAddress);

    function createProposalVote() external {
        ProposalVote proposalVote = new ProposalVote();
        proposalsContracts.push(proposalVote);
        
        emit ProposalVoteCreated(address(proposalVote));
    }

    function getAllProposalVotes() external view returns (ProposalVote[] memory) {
        return proposalsContracts;
    }
}
