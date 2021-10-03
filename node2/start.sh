geth \
--networkid 10 \
--maxpeers 3 \
--datadir $PWD \
--http \
--http.port 8546 \
--http.addr "0.0.0.0" \
--http.corsdomain "*" \
--http.api "admin,eth,debug,miner,net,txpool,personal,web3" \
--port 30304 \
--nodiscover \
--allow-insecure-unlock \
console