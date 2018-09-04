
#### Docker image >> set of layers as you describe
#### Docker Container >> running instance of an image is container; many containers running same image.

to see all running containers
     
        $docker ps -a


####Docker cleanup

####command below will remove:
######- all stopped containers
######- all networks not used by at least one container
######- all dangling images
######- all build cache

        $docker system prune
