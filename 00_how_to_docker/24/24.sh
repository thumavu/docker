# RabbitMQ == is an open source message broker software (sometimes called message-oriented middleware) that implements the Advanced Message Queuing Protocol - AMQP
# docker service create --name "name" == creates a service with that name
# --network == specifies the network it should be attached to
# -e --env == set environment variables
docker service create --name orbital-command --network overmind -e RABBITMQ_DEFAULT_PASS=thumavu -e RABBITMQ_DEFAULT_USER=thumavu rabbitmq