pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/introspection/ERC165.sol";

interface ITest {
  function test() external view;
}

interface Solidity101 {
    function hello() external pure;
    function world(int) external pure;
}

contract ERC165_Test is ERC165,ITest {

  function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165) returns (bool) {
        return
            // interfaceId == type(IERC721).interfaceId ||
            // interfaceId == type(IERC721Metadata).interfaceId ||
            interfaceId == type(ITest).interfaceId || 
            super.supportsInterface(interfaceId);
  }

  function test() override public view{

  }

  function getInterfaceId() public pure returns (bytes4) {
    return type(ITest).interfaceId;
  }

  function calculateSelector() public pure returns (bytes4) {
        // Solidity101 i;
        // return i.hello.selector ^ i.world.selector;
        // return i.hello.selector ;
        return type(Solidity101).interfaceId;
    }


}