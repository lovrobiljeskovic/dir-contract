pragma solidity ^0.4.24;

contract Dir {

  address reporter;
  string name;
  string report_type;
  string desc;
  uint report_status;

  event createReportEvent(address indexed _reporter, string _name, string _report_type, string _desc);

  constructor(string _name, string _report_type, string _desc) public {
    reporter = msg.sender;
    name = _name;
    report_type = _report_type;
    desc = _desc;
    report_status = 1;
    emit createReportEvent(reporter, name, report_type, desc);
  }

  function getReport() public view returns(address _reporter, string _name, string _report_type, string _desc){
    return(reporter, name, report_type, desc);
  }

  function setStatus(uint _report_status) public {
    report_status = _report_status;
  }
}
