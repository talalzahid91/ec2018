# Yes, included again here so that it is removed by the purge below

sudo apt-get --no-install-recommends -y install \
    build-essential pkg-config erlang \
    libicu-dev libmozjs185-dev libcurl4-openssl-dev
cd /usr/src
sudo wget http://www-us.apache.org/dist/couchdb/source/2.1.1/apache-couchdb-2.1.1.tar.gz
sudo tar xfz apache-couchdb-2.1.1.tar.gz
sudo rm apache-couchdb-2.1.1.tar.gz 
cd apache-couchdb-2.1.1 
sudo ./configure
sudo make release
sudo mv ./rel/couchdb /home/couchdb
cd ..
sudo rm -rf apache-couchdb-2.1.1
sudo rm -rf /var/lib/apt/lists/*
cd
cd ec2018
sudo cp local.ini /home/couchdb/etc/local.d/
sudo cp vm.args /home/couchdb/etc/

sudo mkdir -p /home/couchdb/data /home/couchdb/etc/default.d

sudo chmod 777 initializeconfig.sh
sudo chmod 777 create-cluster.sh

#sudo adduser --system \
 #       --no-create-home \
  #      --shell /bin/bash \
   #     --group --gecos \
    #    "CouchDB Administrator" couchdb

#find /home/couchdb -type d -exec chmod 0770 {} \;

#chown -R couchdb:couchdb /home/couchdb/
#chmod 0644 /home/couchdb/etc/*
#chmod 775 /home/couchdb/etc/*.d


#./create-cluster.sh admin admin 5984 5986 "172.31.27.108 172.31.19.122"

#nohup sudo ./couchdb &
 #ps aux | grep couch




