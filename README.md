#Requirements#

You need to install just 2 things

1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [vagrant](https://www.vagrantup.com/downloads.html)

After install both run in command line this (installing [hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager) plugin for vagrant):
```
vagrant plugin install vagrant-hostmanager
```

and this 

```
vagrant up
```

and wait until the virtual machine is ready

After all you have vagrant box on in `13.13.13.13` and you can connect to it using 

```
vagrant ssh
```
or

```
ssh vagrant@13.13.13.13
```
with password `vagrant`

##Lesson 1##

Start docker container with nginx manually

##Lesson 2##

Start docker container with nginx using docker-compose

##Lesson 3##

Start composition of two docker containers, one with php, second with nginx using docker-compose

##Lesson 4##

Start composition of three docker containers. 

- php from clockwise/docker-phpunit-alpain:fpm 
- nginx 
- redis 

Using docker-compose and see in app.php how it works together 
