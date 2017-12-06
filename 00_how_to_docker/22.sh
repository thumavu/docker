# ssh == secure shell 
# docker-machine swarm == manage the swarm
# join --token == joins the *worker* and the *manager*
# token == An opaque Bearer token that clients should supply to subsequent requests in the Authorization header
# --token == Token for entry into the swarm
# docker swarm join-token == manage join tokens 
# --quiet, -q == only display token

docker-machine ssh Aiur "docker swarm join --token $(docker swarm join-token worker --quiet) $(docker-machine ip Char):2377"