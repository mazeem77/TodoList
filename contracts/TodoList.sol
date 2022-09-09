pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract TodoList{
  uint count = 0;

  function setCount(uint _count) public {
    count = _count;
  }

  function getCount() public view returns(uint){
    return count;
  }

  struct tdList{
    string task;
  }

  mapping(uint => tdList) public listTd;

  function setList(uint _id, string memory _task) public {
    listTd[_id] =  tdList(_task);
  }

  function getList() public view returns(tdList memory){
    return listTd[0];
  }
}