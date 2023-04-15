pragma solidity ^0.6.0 ;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Pet is ERC721 {
   constructor() ERC721("Pet", "PET") public  {}

   event PetNFTCreated (

    uint tokenId,
    string imageURL,
    uint date,
    address payable from
  );


   function mintPetNFT(string memory _tokenURI) external {
       uint _tokenId = totalSupply().add(1);
       _safeMint(msg.sender, _tokenId);
       _setTokenURI(_tokenId, _tokenURI);
       emit PetNFTCreated(_tokenId, _tokenURI, now, msg.sender);
    }

}