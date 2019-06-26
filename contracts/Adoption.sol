pragma solidity ^0.5.0;

contract Adoption {
  address[16] public adopters;

  event LogMessage(string message);
  event LogValue(uint value);

  // Adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
  }

  // Retrieving the adopters
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }

  function pay() public payable{
    emit LogMessage("Pay: ");
    emit LogValue(msg.value);
  }

  function withdraw() public{
    emit LogMessage("Widthdraw: 1 ether");
    msg.sender.transfer(1 ether);
  }

}

