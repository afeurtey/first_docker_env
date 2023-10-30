docker run --privileged --shm-size 16gb --net host -v /projects/first_docker_env:/first_docker_env -itd --gpus all --name first_docker_env radekzenkl/first_docker_env:latest 
