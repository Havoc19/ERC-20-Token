pragma solidity ^0.8.5;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract MyToken is ERC20{
    address public admin;
    constructor() ERC20('Blockhash','BKH'){
        _mint(msg.sender, 100000 * 10 ** 18);
        admin = msg.sender;
    } 
    
    function mint(address to,uint amount) external {
        require(msg.sender == admin, 'only admin');
        _mint(to,amount * 10 ** 18);
    }
    
    function burn(uint amount) external {
        _burn(msg.sender ,amount);
    }
}
