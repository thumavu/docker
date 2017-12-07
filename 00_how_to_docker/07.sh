#--format, -f = format the output using the given go template
#docker inspect = will rander results in a json array
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' overlord