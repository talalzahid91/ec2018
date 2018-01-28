# ReadME
1 - Run the install script on the desktop.
2 - For the node this couchdb in configured, inserts it IP in the initlializeconfig.sh file.
3 - Run the couchddb instance on the node by using "sudo ./couchdb & " which is in the following directory /home/couchdb/bin
    You could run the service as well by using daemon.
4 - Now run the ./create-cluster.sh admin admin 5984 5986 "primarynodeprivateip connecting node ips"
5 - Do the same procedure on the other nodes.
6 - The command to create database along with sharding can be done by using the following command curl -X PUT "http://xxxx.xxxx.xxxx.xxxx:5984?n=1&q=3" --user username , where n = number of nodes and q = number of shards. Just use n = 1, for no replicas. 
