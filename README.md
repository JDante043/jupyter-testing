# Purpose
The purpose of this docker container is to explain and demonstrate the basics of containerization.

The dockerfile uses the official python docker, which will modify it to install Anaconda3 and start a jupyter server. This should be used to explain what dockerfiles are

The docker compose file will mount the jupyter-data folder to the container. This should be used to explain what compose files are

You do not need to build the dockerfile, it is already available in hub.docker.com under the repository `dannb/jupyter-testing` and already referenced in the compose file.

# Pre-requisites
- A docker installation is required, make sure the docker service is started
- A functioning internet connection is required

# Running the container
1. Either clone this repository or download it as zip, then unpack it.
2. From the root folder, `docker compose up`
  - If running for the first time, docker will first download the 

# Stopping the container
- Go to the root of the project, `docker compose down`
- Or if you don't want to navigate there: `docker stop jupyter-testing`
