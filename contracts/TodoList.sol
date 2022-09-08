pragma solidity ^0.5.0;

contract TodoList{
  uint count = 0;

  function setCount(uint _count) public {
    count = _count;
  }

  function getCount() public view returns(uint){
    return count;
  }
}