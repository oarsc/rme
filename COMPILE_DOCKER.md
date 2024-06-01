## Creating Docker Image

Create the docker image by using the Dockerfile with:
```sh
docker build -t rmei .
```

## Compile the code from the image

Run the next command to compile:
```sh
docker run -itv $PWD:/rme --rm rmei
```
