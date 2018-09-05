
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


to run docker images

        $docker run it image_name:tag_latest

-rm ==  delete's container as soon as it is stopped & --name == allows us to name our container

        $docker run it -rm -name temp_name image:latest


#### Docker cleanup

#### command below will remove:
###### - all stopped containers
###### - all networks not used by at least one container
###### - all dangling images
###### - all build cache

        $docker system prune
