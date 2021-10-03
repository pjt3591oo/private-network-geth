geth \
--networkid 10 \
--syncmode full \
--maxpeers 3 \
--datadir $PWD \
--http \
--http.port 8545 \
--http.addr "0.0.0.0" \
--http.corsdomain "*" \
--http.api "admin,eth,debug,miner,net,txpool,personal,web3" \
--port 30303 \
--nodiscover \
--allow-insecure-unlock \
--miner.gasprice '1' \
--unlock '0x56aE1237F0D3E2F21683Bd04402092E26f469813' \
--password password.txt \
--mine \
console