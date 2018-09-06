
#### Docker image >> set of layers as you describe
#### Docker Container >> running instance of an image is container; many containers running same image.
#### Dockerfile >> are  used to tell Docker what it needs to do in order to create an image.


to see all running containers
     
        $docker ps -a


#### Summary
######    Containers are self-contained units
######    Each container should do one job, and one job only
######    Images are made up of layers
######    All layers of an image are read only, except the top layer which is read & writable. This top layer is referred to as the container
######    The number of layers and what each of them do are determined by the contents of the dockerfile that is used to create them
######    Because all layers (bar the top one) is read only, they can be shared between containers resulting in great efficiencies
######    dockerfiles should be written in a way which optimises the cache
######    The --no-cache flag should be used when fresh data is required
######    Docker Engine is used to turn  dockerfile instructions into an images. It is also used to run containers

######    dockerfiles are used to tell Docker Engine how to create our image
######    For the most part, dockerfiles are made up of sh scripts/commands
######    Images are always based on other images, e.g the Python image we’ve been discussing is based on Alpine Linux
######    We can only have CMD command per dockerfile
######    The CMD command tells Docker which executable to monitor


###### to run docker images

        $docker run it image_name:tag_latest

###### -rm ==  delete's container as soon as it is stopped & --name == allows us to name our container

        $docker run it -rm -name temp_name image:latest


###### Docker image >> set of layers as you describe
###### Docker Container >> running instance of an image is container; many containers running same image.

        docker ps -a	To see all running containers

###### Here are some of the most used docker commands.
###### 1. Run an container
        docker run image-name

###### 2. Run a container in detached mode
        docker run -d image-name

###### 3. Stop all running containers
        docker kill $(docker ps -q)

###### 4. Delete all stopped containers
        docker rm $(docker ps -a -q)

###### 5. Delete all images
        docker rmi $(docker images -q)

###### 6. Force delete all images
        docker rmi -f $(docker images -q)

###### 7. Port mapping
        docker run -p host_port:docker_port image-name

###### 8. Volume mapping
        docker run -v host_volume:docker_volume image-name

###### 9. Run commands inside container
        docker exec container-id command

###### 10. Go inside container
        docker exec -it container-id bash

###### pect a container (eg. to find internal IP of container, image it is using etc)
        docker inspect container-id




#### Docker cleanup

#### command below will remove:
###### - all stopped containers
###### - all networks not used by at least one container
###### - all dangling images
###### - all build cache

        $docker system prune
