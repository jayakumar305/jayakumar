pragma solidity ^0.5.0;

contract School{
    address studentId;
    struct student{
        string name;
        uint256 class;
        string sec ;
        uint256 date;
        uint256 subjecttamil;
        uint256 subjectenglish;
        uint256 subjectmatchs;
        uint256 subjectscience;
        uint256 subjectsocial;
        uint256 total;
        bool result;
        
    }
    
    mapping(address=>student) public students;
    
    constructor() public{
        
    }
    
    function addParticipantRecord(address studentId, string memory _name, uint256 _class, string memory _sec, uint256 _date , uint256 _subjecttamil,
     uint256 _subjectenglish ,uint256 _subjectmatchs ,uint256 _subjectscience ,uint256 _subjectsocial ,uint256 _total ,  bool _result) 
    public {
        students[studentId].name = _name;
        students[studentId].class = _class;
        students[studentId].sec = _sec;
        students[studentId].date = _date;
        students[studentId].subjecttamil = _subjecttamil;
        students[studentId].subjectenglish = _subjectenglish;
        students[studentId].subjectmatchs = _subjectmatchs;
        students[studentId].subjectscience = _subjectscience;
        students[studentId].subjectsocial = _subjectsocial;
        students[studentId].total  = _total;
        students[studentId].result = _result;
        
        }
    //     function getParticipantRecord(address studentId) public view returns(string memory, uint256, string memory, uint256, uint256, uint256, uint256, uint256, uint256, uint256, bool){
    //     return(students[studentId].name, students[studentId].class, students[studentId].sec, students[studentId].date, students[studentId].subjecttamil, students[studentId].subjectenglish, students[studentId].subjectmatchs, students[studentId].subjectscience, students[studentId].subjectsocial, students[studentId].total, students[studentId].result);
        
    // }
    
}
