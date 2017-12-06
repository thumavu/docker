# -d --detach == run command in the background
# -p --publish == publish a container's port to the host
# --link == add a link to another container 
docker run -d -p 8081:80 --link spawning-pool:db --name roach-warden bitnami/phpmyadmin