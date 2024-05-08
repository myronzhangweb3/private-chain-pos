# 使用最新的 Node.js 官方镜像
FROM node:latest

# 设置工作目录
WORKDIR /usr/app

# 全局安装 Ganache，这是一个用于以太坊开发的个人区块链
RUN npm install ganache --global

# 暴露两个端口，Ganache 默认的 RPC 和 WebSocket 端口
EXPOSE 8545 8546

# 使用 ENTRYPOINT 指定容器启动时执行的命令，注意分开命令和参数
ENTRYPOINT ["ganache", "--server.host=0.0.0.0", "--chain.chainId=1111", "--database.dbPath=./ganache_data", "--miner.blockTime=12", "--wallet.accounts=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80,100000000000000000000000000"]