cd ../basic-network
./start.sh

docker-compose -f ./docker-compose.yml up -d cli

docker exec cli peer chaincode install -n mycc -p github.com/sacc -v 0
docker exec cli peer chaincode instantiate -o orderer.example.com:7050 -C mychannel -n mycc github.com/sacc -v 0 -c '{"Args": ["a", "100"]}' -P "OR('Org1MSP.member')"

cd ../sacc-clientapp
node enrollAdmin.js
node registerUser.js