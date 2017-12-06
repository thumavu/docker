# 1 = list all the services
# 2 = stop all the services
# 3 = delete all the services
docker service rm $(docker service ls -q)