pragma solidity ^0.8.17;

contract MyContract {
    address[16] public adoptedDogs;

    function adoptionDog(uint256 indexDog) public returns (bool) {
        require(indexDog >= 0 && indexDog <= 15, "out of range");
        bool adoptionWithExit = true;

        if (adoptedDogs[indexDog] == address(0)) {
            adoptedDogs[indexDog] = msg.sender;
        } else {
            adoptionWithExit = false;
        }

        return adoptionWithExit;
    }

    function getAdoptedDogs() public view returns (address[16] memory) {
        return adoptedDogs;
    }
}
