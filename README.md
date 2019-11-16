# hello-cloud-build
Demo for Cloud Build

## Get the Code
```
git clone https://github.com/briantanseng/hello-cloud-build.git [your project directory]

cd [your project directory]
```
## Build the Docker Container
```
docker build -t gdg/hello-cloud-build .
```

## Run the Container
```
# run on port 8080
docker run -p 8080:8080 gdg/hello-cloud-build

# run as a backgroud process
docker run -p 8080:8080 -d gdg/hello-cloud-build

# run and remove when it's terminated
docker run -p 8080:8080 --rm gdg/hello-cloud-build
```


