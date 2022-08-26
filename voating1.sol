pragma solidity ^0.8.7;


contract voating{
    adress owner;
    string public purpose;
    constructor(string memory a){
          owner = msg.sender;
          purpose = a;

    }
    struct voter{
        bool authroized ;
        bool voted;

    }
    uint totalVotes;
    uint A;
    uint B;
    uint C;
    mapping(address=>voter) information;
    
    modifire owner() {
        require(msg.sender == owner);
        _;
    }
    
    function authorize( aderess x) owner public {
         information[x].authorized = true;



    }
    function teamA(adresss _adress) public {
        require(!information[_adress].voted, "already voted");
        require(information[_adress].autorized,"you can't vote");
        info[_adress].voted = true;
        A++;
        totalVotes++;
    }
    function teamB(adresss _adress) public {
        require(!information[_adress].voted, "already voted");
        require(information[_adress].autorized,"you can't vote");
        info[_adress].voted = true;
        B++;
        totalVotes++;
    }
    function teamC(adresss _adress) public {
        require(!information[_adress].voted, "already voted");
        require(information[_adress].autorized,"you can't vote");
        info[_adress].voted = true;
        C++;
        totalVotes++;
    }
    
    function resultOfVoting() public view returns(string memory){
        if(A>B){
			if(A>C){
				return"A is Winning";
			}
			else if(C>A){
				return "C is Winning"; } }
		else if(B>C) {
			return "B is Winning";
		}
		else if(
		A==B && A==C || B==C ){
			return "No One is Winning";
		}

    }



}