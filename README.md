# node-express-docker

This is Node.js app which use Express.js framework.
Below you can see instruction how to run `node-express-docker` app into a Docker container.

## Getting Started

Go to the root path and build Docker image:
```bash
docker build -t node-express-docker .
```

Run the image you previously built:
```bash
docker run --name node-express-docker -p 48080:8080 -d node-express-docker
```
In the example above, Docker mapped the 8080 port inside of the container to the port 48080 on your machine.

Now you can call your app using curl:
```bash
curl http://localhost:48080/
```
Or you can open [http://localhost:48080](http://localhost:48080) with your browser to see the result.