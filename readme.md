# SUI学习笔记
## 学习资料
https://movefuns.notion.site/Web3-9835c8dea4fd424bbe61e4fa599689ad
[sui官网](https://docs.sui.io/)

# 查看版本
sui --version
move-analyzer --version

# sui client
查看地址
sui client addresses

sui client gas

DC 领水：https://discord.com/channels/916379725201563759/971488439931392130/1209153961802866689
命令行领水
curl --location --request POST 'https://faucet.devnet.sui.io/gas' --header 'Content-Type: application/json' --data-raw '{"FixedAmountRequest":{"recipient":"0x527e28dfeeb98ebac8fd78b6924780b34b6210d73c05b9d2523f8c0c580a3b8a"}}'

curl --location --request POST 'https://fullnode.testnet.sui.io:443' --header 'Content-Type: application/json' --data-raw '{"FixedAmountRequest":{"recipient":"0x527e28dfeeb98ebac8fd78b6924780b34b6210d73c05b9d2523f8c0c580a3b8a"}}'



# 创建项目
sui move new hello_world

# 编写项目



# 发布项目
sui client publish --gas-budget 10000000

packageID(智能合约)：0x33d7b16c55ac5f5e117ae42d970d98f6483ababe0a29e0bac5c7ab5265f1246f

# 发行代币

发布的coin包1
https://suiexplorer.com/object/0x874be8424dfc6b1c901120b56e7102cfe055b2735dcc133ee7d0202182a80f7d?network=testnet
发布的coin包2
https://suiexplorer.com/object/0x38743985b71d2435e4b381bd25b1d527f069ae694d72e0ef9817674ea160972c?network=testnet

sui client call \
--function mint \
--module managed \
--package 0x38743985b71d2435e4b381bd25b1d527f069ae694d72e0ef9817674ea160972c \ # 包id
--args 0x7b2b9c68340fdba93b18bcb580ce81449589c6674f609669c0c07a0ed7e06826 100 0x527e28dfeeb98ebac8fd78b6924780b34b6210d73c05b9d2523f8c0c580a3b8a \ # 代币id 代币数量 接收地址
--gas-budget 100000000

sui client call \
--function burn \
--module managed \
--package 0x38743985b71d2435e4b381bd25b1d527f069ae694d72e0ef9817674ea160972c \
--args 0x7b2b9c68340fdba93b18bcb580ce81449589c6674f609669c0c07a0ed7e06826 0x9b52a6a8a80b4a13c6ca871b32cefe379ffe29b50f53c9fa2a391975b2961888 \
--gas-budget 100000000

# mint NFT

