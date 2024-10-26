# 1. **Multipass for Beginners**

## 1.1. Introduction

Multipass is a tool to generate cloud-style Ubuntu Virtual Machines(VMs) quickly on Linux, macOS and Windows. It provides a simple but powerful Commamd Line Interface that allows you to create your own local mini-cloud, thereby protecting your host machine from being corrupted.<br>
From there you can run most risky processes and applications without damaging your machine.

The following commands are useful when working with multipass;

### 1.1.1. Install multipass

Run the command below to install multipass
```shell
snap install multipass
```

### 1.1.2. Create an instance in multipass with custom name
```shell
launch multipass --name `custom name`
```

### 1.1.3. Use an instance
```shell
multipass start --name `custom name`
```

### 1.1.4. To delete an instance 
```shell
multipass delete  --name `custom name`
```

### 1.1.5. To delete all instances
```shell
multipass delete --all
```

### 1.1.6. To recover an instance
```shell
multipass recover --name `custom name`
```
<br>

## 1.2. Using the docker blueprint in multipass

The Docker blueprint gives Multipass users an easy way to create Ubuntu instances with Docker installed. It is based on the latest LTS release of Ubuntu, and includes docker engine and Portainer.

To launch the Docker VM with default parameters, run the command

```shell
multipass launch docker
```
This command will create a virtual machine running the latest version of Ubuntu, with Docker and Portainer installed
<br>

Run the command below to use Docker VM

```shell
multipass exec docker docker`
```

To see created Docker images on your machine, run the command

```shell
docker images
```

To display a list of all the Docker containers in your machine, run the command

```shell
docker ps
```
You can use it to see all running and stopped containers with their sizes.

To stop a Docker instance, run the command

```shell
docker stop
```

## 1.3. Using alias with the Docker commands

The Docker blueprint creates automatically two aliases, that is, two commands which can be run from the host to use commands in the instance as if they were in the host. In particular, the **host docker** command executes docker in the instance, and the **host docker-compose** command executes docker-compose in the instance.

## 1.4. Using Portainer

The Docker blueprint comes with portainer pre-installed, which is a universal container management platform which gives a user-friendly graphical interface for managing your Docker containers. To acces portainer you first need the IP address of your docker VM, this can be done using the command

```shell
multipass list
```