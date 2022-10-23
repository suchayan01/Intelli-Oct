apt update
eval `ssh-agent -s`

docker ps
to make rooot below
sudo chmod 666 /var/run/docker.sock ***( to change )

sudo reboot

docker run -d image id  ( -d is for detach so that we dont need one terminal for each image )
with out any explicit flag it will run only locally
To go inside a runner docker image-> docker exec -it id/name
exec- execute
i- interactive
t - terminal(tty)
apt update
apt install net-tools

netstat -tulpn | grep LIST
curl ifconfig.me -> will give public ip of my container
docker commit id name -> will create an image 
docker build -t ngnix-my:v2 .


Kubernates
Master Node
etcd -> database for the clusters
API server -> single entry pt of cluster where auth of person whi wants to connect is verified 
Scheduler -> its job is to resource manage and manage future and present events on the cluster
controller manager -> lsitens to heartbeat if pods are available 
resplication 
Slave
Kubelet
kube-proxy -> makes sure applications are avilable to external host
