/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
    solidity: "0.8.24",
    networks: {
        hardhat: {
            chainId: 9999,
            mining: {
                auto: true, // 开启自动挖矿
                interval: 12000
            }
        }
    },
};
