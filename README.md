# ReadME
1 - Run the install script on the desktop.
2 - For the node this couchdb in configured, inserts it IP in the initlializeconfig.sh file.
3 - Run the couchddb instance on the node by using "sudo ./couchdb & " which is in the following directory /home/couchdb/bin
    You could run the service as well by using daemon.
4 - Now run the ./create-cluster.sh admin admin 5984 5986 "primarynodeprivateip connecting node ips"
5 - Do the same procedure on the other nodes.

