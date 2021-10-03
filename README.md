# private network by geth

geth version: 1.10.9-stable-eae3b194

* node1

```
56ae1237f0d3e2f21683bd04402092e26f469813
55e2d8bf452e1e7d70eb375b527fd38b281b00cf
```

```
p
p
```

* node2

```
55e2d8bf452e1e7d70eb375b527fd38b281b00cf
```

```
p
p
```

## POA

### configuration

```
genesis_poa.json
init_poa.sh
start_poa.sh
```

* extraData

round robin accounts

```
0x0000000000000000000000000000000000000000000000000000000000000000<accounts that deleted prefix 0x>0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
```

* config

clique.period: transaction이 발생하지 않을 때 블록생성 주기

```json
{
  "chainId": 10,
  "homesteadBlock": 0,
  "eip150Block": 0,
  "eip155Block": 0,
  "eip158Block": 0,
  "byzantiumBlock": 0,
  "constantinopleBlock": 0,
  "petersburgBlock": 0,
  "istanbulBlock": 0,
  "berlinBlock": 0,
  "londonBlock": 0,
  "clique": {
    "period": 5,
    "epoch": 30000
  }
}
```

### running

만약 다음과 같은 에러가 발생한다면 **`--syncmode full`** 옵션을 추가한다

```
WARN [10-03|09:41:31.263] Fast syncing, discarded propagated block number=2 hash=f65689..b2ac86
```

extraData에 등록한 accounts의 수를 N이라고 할 때 **`N/2 + 1`** 만큼 마이닝을 수행해야 정상적으로 블록생성을 시작한다.

```bash
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
```

**`--mine`** 옵션은 노드 실행시 마이닝 시작을 자동으로 한다. 만약 **`--mine`** 옵션이 없다면 **`miner.start()`** 를 직접 실행해야 한다.

**`--miner.gasprice`** 없다면 정상적인 블록생성이 불가능 할 수 있다. (POA의 경우만)

**`--networkid`** 반드시 genesis.json의 config.chainId와 같은 값을 설정해야 한다. 

---

## POW

### configuration

```
genesis.json
genesis_eip1559.json

init.sh
init_eip1559.sh

start.sh
```

init.sh는 genesis.json, init_eip1559.sh는 genesis_eip1559.json을 사용하여 genesis block을 생성한다.

### running

```bash
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
```