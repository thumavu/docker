# pulls launching mysql container in the background == docker run -d 
# enable restat incase of an error == --restart on-failure 
# creating a volume == -v hatchery:/var/lib/mysql 
# setting the root password of db == -e MYSQL_ROOT_PASSWORD=Kerrigan
# setting the db name == -e MYSQL_DATABASE=zerglings
# creating and naming mysql container == --name spawning-pool mysql

docker run -d --restart on-failure -v hatchery:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Kerrigan -e MYSQL_DATABASE=zerglings --name spawning-pool mysql