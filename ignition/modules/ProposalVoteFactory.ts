import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const ProposalVoteFactory = buildModule("ProposalVoteFactory ", (m) => {
  const proposalVoteFactory = m.contract("ProposalVoteFactory ");

  return { proposalVoteFactory };
});

export default ProposalVoteFactory;
