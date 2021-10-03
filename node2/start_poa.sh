geth \
--networkid 10 \
--syncmode full \
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
--miner.gasprice '1' \
--unlock '55e2d8bf452e1e7d70eb375b527fd38b281b00cf' \
--password password.txt \
--mine \
console