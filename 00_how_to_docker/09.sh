# 1st pull a dabian container then execute the below commands
# docker run -it --rm debian /bin/sh
apt-get update -y
apt-get upgrade -y
apt-get install gcc -y
apt-get install git -y