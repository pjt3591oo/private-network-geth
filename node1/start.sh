geth \
--networkid 10 \
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
console