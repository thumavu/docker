# engineering-bay ==  is a terran building used to improve the quality of weapons and armor fielded by infantry
# OC - orbital-command = some game command
# --replicas == flag to set the number of replica tasks for a replicated service
docker service create --name engineering-bay --network overmind --replicas 2 -e OC_PASSWD=thumavu -e OC_USERNAME=
thumavu 42school/engineering-bay