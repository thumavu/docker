# /bin/sh = is the shell
# --rm = auto remove the container when it exits
# -i = interactive models
# -t allocate a pseudo-TTY(bash command prompt/termianal)
docker run -it --rm alpine /bin/sh