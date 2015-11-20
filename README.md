# GoLilypad-Connect Server Container

This will create a Lilypad authentication server.  This is the backbone of a Lilypad Network.  Its what tells Proxies and Minecraft servers in a Lilypad network where to find each other.

## How-To

Run via docker run

    docker run -d chamuns/GoLilypad-Connect

Run via docker-compose.yml

    docker-compose up -d

You get a bit more control and make less errors launching this container by docker-compose so I suggest you try to install docker-compose and stick to using that over the commands themselves but if you're already confident with using `docker run` and know what you'd like to pass to it argument wise feel free.  The docker volumes all exist within /app/ inside of the container.  

I haven't decided how I want to run things as underprivileged users as a standard in my containers yet so currently the application is running with too many privileges inside of the container but you could theoretically make the entire container read only.

## Current Status

Complete tested and functional.

## ToDo

- Create docker-compose.yml file to launch proxy
- Write how-to use container guide
- Tags for past MC versions
- Tag for latest version.

## Health & Statistics

#### Repository Health

[![GitHub issues](https://img.shields.io/github/issues/chamunks/Lilypad-Connect.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Connect) out of [![GitHub total issues](https://img.shields.io/github/issues-raw/chamunks/Lilypad-Connect.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Connect)

#### Container Build Health

[![Docker Pulls](https://img.shields.io/docker/pulls/chamunks/Lilypad-Connect.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/Lilypad-Connect/)
[![Docker Stars](https://img.shields.io/docker/stars/chamunks/Lilypad-Connect.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/Lilypad-Connect/)
[![Docker Build Status](http://hubstatus.container42.com/chamunks/Lilypad-Connect)](https://registry.hub.docker.com/u/chamunks/Lilypad-Connect)

#### Repository Statistics/Info

[![GitHub license](https://img.shields.io/github/license/chamunks/Lilypad-Connect.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Connect)

[![GitHub forks](https://img.shields.io/github/forks/chamunks/Lilypad-Connect.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Connect)
[![GitHub stars](https://img.shields.io/github/stars/chamunks/Lilypad-Connect.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Connect)
