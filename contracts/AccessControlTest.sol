pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract AccessControlTest is AccessControl {

  // /**
  //    * @dev Role for configration management.
  //    */
  //   bytes32 public constant MANAGER_ROLE = keccak256("MANAGER");

  //   /**
  //    * @dev Role for singed, used by the main contract.
  //    */
  //   bytes32 public constant SIGNER_ROLE = keccak256("SIGNER");

  //   address public adminFeeReceiver;
  bytes32 public constant A_ROLE = keccak256("A");
  bytes32 public constant B_ROLE = keccak256("B");
  bytes32 public constant C_ROLE = keccak256("C");
    
    constructor(address admin) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _setRoleAdmin(A_ROLE,DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(B_ROLE,A_ROLE);
        _setRoleAdmin(C_ROLE,B_ROLE);
        // adminFeeReceiver = admin;
    }
}