# Webservice-docker

Directory contains:

- Dockerfile for API
- Configuration for docker-compose

## How to use

Other useful commands:

```shell
# Check configuration
docker-compose config
# Start devel app stack
docker-compose up -d
# Show running containers
docker-compose ps
# Show logs (with tail -f)
docker-compose logs -f
# Restart application stack
docker-compose restart
# Enter into the container
docker-compose exec http sh
docker-compose exec php sh
# Restart single service
docker-compose http restart
```

## Run composed setup with integration tests
```
# command:
docker-compose -f docker-compose-test.yml up --abort-on-container-exit
docker-compose -f docker-compose-test.yml down --rmi all -v
```



## Guide to install API on windows 

### Installation guide:
- Download docker desktop from: https://hub.docker.com/editions/community/docker-ce-desktop-windows
- Add your user to docker-group in windows using the windows computer management tool
- Get webservice and webservice-commons(read readme)
- Go to Github and create a personal access token with all permissions, see guide here: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line
- Save the token for later use, you will not be able to see the token again later if not saved
- Now open the command prompt (cmd) and type:
    
   `Cd {path/to/api}`
   
- Login using your Github username and the token you have created as password. NOTICE: when asked for a password, you need to enter your personal access token instead.
    docker build -t VolourApp/api:develop docker
- In the Docker folder copy the “.env.example” and rename it to .env
- Go a step further in, to enter the docker folder using following command:
 
  `cd docker`
- Correct any missing or incorrect parameters in the newly created “.env” file
    
- To start the docker use:

    `docker-compose up -d`
    
Remember to:
- Change the ip address to database in the project/env, these can be found using following command:

    `Docker ps`
    
    `docker inspect {Mysql container id}`
