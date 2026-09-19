pragma solidity ^0.8.0;

contract InfiniteRegeneration332 {
    uint256 public lattice;
    uint256 public constant MAX_LATTICE = 332;

    event LatticeAdvanced(uint256 indexed newLattice);

    function advanceLattice() external {
        lattice += 1;

        if (lattice > MAX_LATTICE) {
            lattice = 0;
        }

        emit LatticeAdvanced(lattice);
    }
}
