# sacc-clientapp
The clientapp for SACC deployed in Basic-Network (tested in 1.4.4)

## Step 1: Prepare a Fabric Node

## Step 2: git clone this repo to fabric-samples
```
cd fabric-samples
git clone https://github.com/kctam/sacc-clientapp.git
```

## Step 3: Use both start.sh to start the *Basic Network* with channel *mychannel* and chaincode *sacc*.
```
cd sacc-clientapp
./start.sh
```

## Step 4: The script is used with arguments

### to get the value of "a"
```
node get.sh a
```

### to set the value of "a" to "100"
```
node set.sh a 100
```

## Step 5: To clean up everything.
```
./cleanup.sh
```
