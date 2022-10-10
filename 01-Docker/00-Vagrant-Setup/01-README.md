# Lab Setup Guide

## We will use Vagrant to setup Virtual Machines & for the same we've to follow the below instructions. 

### Open Cmder / GitBash / Powershell any of these tools:
```
cd devops-lab/vagrant-setup/devops/
```

### Check the existing VM Status 
```
vagrant.exe status
```

```
Current machine states:

master                    running (virtualbox)
worker1                   running (virtualbox)
worker2                   running (virtualbox)
```

### To start the Virtual Machine 
```
vagrant up master 
```


### Login to master node 

```
vagrant.exe ssh master
sudo su - 
```

### In order to stop / poweroff the Virtual Machine
```
vagrant halt <virtualmachinename> 
```


### In order to destroy the Virtual Machine
```
vagrant destroy <virtualmachinename> 
```
