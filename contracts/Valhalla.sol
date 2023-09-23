pragma solidity >0.5.2;

contract Valhalla {
    address[16] public servlets;

    // call a servlet
    function call(uint servletId) public returns (uint) {
        require(servletId >= 0 && servletId <= 15);
        // 将 master 的地址保存到数组中
        servlets[servletId] = msg.sender;

        return servletId;
    }

    // return a servlet info
    function getServlets() public view returns (address[16] memory) {
        return servlets;
    }
}
