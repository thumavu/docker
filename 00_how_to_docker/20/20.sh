# A swarm is madeup of multiple nodes, which can be either physical or virtual-machines
docker swarm init --advertise-addr $(docker-machine ip Char):2377