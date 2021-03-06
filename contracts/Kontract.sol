pragma solidity ^0.4.2;

contract Kontract {
  struct Kontract {
    address creator;
    string content;
    string status;
    address[] contractors;
    address[] judges;
  }

  Kontract[] kontracts;

  function createContract(string _content, address[] _contractors, address[] _judges) returns (uint){
    var kontract = Kontract({
        creator: msg.sender,
        content: _content,
        status: "DRAFT",
        contractors: _contractors,
        judges: _judges
      });
    kontracts.push(kontract);
  }

  function getContract(uint id) returns (address creator, string content, string status, address[] contractors, address[] judges) {
    var kontract = kontracts[id];
    return (kontract.creator, kontract.content, kontract.status, kontract.contractors, kontract.judges);
  }

}
