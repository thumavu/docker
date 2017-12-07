# python:slim == Python image that contains minimun packeges to run python
# -d detach == run container in background
# -t == allocate a pseudo-tty for imulating a real text terminal
# -p == is for setting/mapping up the port number
# docker exec == runs a new command in a running container
# pip install Flask == Installs python web dev micro-framework Flask
# -env -e == set up environment variables
# --host=0.0.0.0 == make the server publicly available
# flask run --host=0.0.0.0 == tells the OS to listen on all public IP 

docker run -dt -v ~/Abathur:/root --name Abathur -p 3000:3000 python:2-slim
docker exec Abathur pip install flask
docker exec Abathur bash -c "echo -e 'from flask import Flask\napp = Flask(__name__)\n
\n@app.route(\"/\")\ndef hello():\n\treturn \"<h1>Hello World<h1>\"\n\nif __name__ == \"__main__\":\n\tapp.run()' > /root/hello.py"
docker exec --env FLASK_APP=/root/hello.py Abathur flask run --host=0.0.0.0 --port=3000