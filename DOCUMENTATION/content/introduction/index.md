---
title: Introduction
type: index
weight: 1
---

<b>VirtualWebEnv</b> is a full WEB Development Environment for Docker.

It supports a variety of common services, all pre-configured to provide a ready PHP development environment.

<br>

---
### Use Docker First - Learn About It Later!</q>
---

<a name="features"></a>
## Features

- Easy switch between PHP versions: 8.1, 8.0, 7.4, 7.3, 7.2, 7.1, 5.6...
- Choose your favorite database engine: MySQL, Postgres, MariaDB...
- Run your own stack: Memcached, HHVM, RabbitMQ...
- Each software runs on its own container: PHP-FPM, NGINX, PHP-CLI...
- Easy to customize any container, with simple edits to the `Dockerfile`.
- All Images extend from an official base Image. (Trusted base Images).
- Pre-configured NGINX to host any code at your root directory.
- Can use VirtualWebEnv per project, or single VirtualWebEnv for all projects.
- Easy to install/remove software's in Containers using environment variables.
- Clean and well-structured Dockerfiles (`Dockerfile`).
- The Latest version of the Docker Compose file (`docker-compose`).
- Everything is visible and editable.
- Fast Images Builds.






## Quick Overview

Let's see how easy it is to setup our demo stack `PHP`, `NGINX`, `MySQL`, `Redis` and `Composer`:

1 - Clone VirtualWebEnv inside your PHP project:

```shell
git clone https://github.com/virtualwebenv/virtualwebenv.git
```

2 - Enter the VirtualWebEnv folder and rename `.env.example` to `.env`.

```shell
cp .env.example .env
```

3 - Run your containers:

```shell
docker-compose up -d nginx mysql phpmyadmin redis workspace 
```

4 - Open your project's `.env` file and set the following:

```shell
DB_HOST=mysql
REDIS_HOST=redis
QUEUE_HOST=beanstalkd
```

5 - Open your browser and visit localhost: `http://localhost`.

```shell
That's it! enjoy :)
```




<a name="Supported-Containers"></a>
## Supported Services

> VirtualWebEnv, adheres to the 'separation of concerns' principle, thus it runs each software on its own Docker Container.
> You can turn On/Off as many instances as you want without worrying about the configurations.

> To run a chosen container from the list below, run `docker-compose up -d {container-name}`. 
> The container name `{container-name}` is the same as its folder name. Example to run the "PHP FPM" container, use the name "php-fpm".

- **Web Servers:**
    - NGINX 
    - Apache2 
    - Caddy 

- **Load Balancers:**
    - HAProxy
    - Traefik

- **PHP Compilers:**
    - PHP FPM 
    - HHVM

- **Database Management Systems:**
    - MySQL
    - PostgreSQL
        - PostGIS
    - MariaDB
    - Percona
    - MSSQL 
    - MongoDB
        - MongoDB Web UI
    - Neo4j
    - CouchDB
    - RethinkDB 
    - Cassandra


- **Database Management Apps:**
    - PhpMyAdmin 
    - Adminer 
    - PgAdmin

- **Cache Engines:**
    - Redis 
        - Redis Web UI
        - Redis Cluster
    - Memcached 
    - Aerospike 
    - Varnish

- **Message Brokers:**
    - RabbitMQ
        - RabbitMQ Admin Console 
    - Beanstalkd
        - Beanstalkd Admin Console 
    - Eclipse Mosquitto
    - PHP Worker
    - Laravel Horizon
    - Gearman
    - Amazon Simple Queue Service

- **Mail Servers:**
    - Mailu 
    - MailCatcher
    - Mailhog 
    - MailDev

- **Log Management:**
    - GrayLog 

- **Testing:**
    - Selenium 

- **Monitoring:**
    - Grafana
    - NetData 

- **Search Engines:** 
    - ElasticSearch
    - Apache Solr
    - Manticore Search

- **IDE's**  
    - ICE Coder
    - Theia
    - Web IDE

- **Miscellaneous:**
    - Workspace *(VirtualWebEnv container that includes a rich set of pre-configured useful tools)*
         - `PHP CLI` 
         - `Composer` 
         - `Git`
         - `Vim` 
         - `xDebug`
         - `Linuxbrew` 
         - `Node`
         - `V8JS` 
         - `Gulp` 
         - `SQLite` 
         - `Laravel Envoy` 
         - `Deployer` 
         - `Yarn` 
         - `SOAP` 
         - `Drush` 
         - `Wordpress CLI`
         - `dnsutils`
    - Apache ZooKeeper *(Centralized service for distributed systems to a hierarchical key-value store)*
    - Kibana *(Visualize your Elasticsearch data and navigate the Elastic Stack)*
    - Dejavu *(Edit your Elasticsearch data)*
    - LogStash *(Server-side data processing pipeline that ingests data from a multitude of sources simultaneously)*
    - Jenkins *(automation server, that provides plugins to support building, deploying and automating any project)*
    - Certbot *(Automatically enable HTTPS on your website)*
    - Swoole *(Production-Grade Async programming Framework for PHP)* 
    - SonarQube *(continuous inspection of code quality to perform automatic reviews with static analysis of code to detect bugs and more)* 
    - Gitlab *(A single application for the entire software development lifecycle)*
    - PostGIS *(Database extender for PostgreSQL. It adds support for geographic objects allowing location queries to be run in SQL)*
    - Blackfire *(Empowers all PHP developers and IT/Ops to continuously verify and improve their app's performance)*
    - Laravel Echo *(Bring the power of WebSockets to your Laravel applications)*
    - Mercure *(Server-sent events)*
    - Phalcon *(A PHP web framework based on the model–view–controller pattern)*
    - Minio *(Cloud storage server released under Apache License v2, compatible with Amazon S3)*
    - AWS EB CLI *(CLI that helps you deploy and manage your AWS Elastic Beanstalk applications and environments)*
    - Thumbor *(Photo thumbnail service)*
    - IPython *(Provides a rich architecture for interactive computing)*
    - Jupyter Hub *(Jupyter notebook for multiple users)*
    - Portainer *(Build and manage your Docker environments with ease)*
    - Docker Registry *(The Docker Registry implementation for storing and distributing Docker images)*
    - Docker Web UI *(A browser-based solution for browsing and modifying a private Docker registry)*

You can choose, which tools to install in your workspace container and other containers, from the `.env` file.


> If you modify `docker-compose.yml`, `.env` or any `dockerfile` file, you must re-build your containers, to see those effects in the running instance.



*If you can't find your Software in the list, build it yourself and submit it. Contributions are welcomed :)*

---










## Join Us

[![Gitter](https://badges.gitter.im/virtualwebenv/virtualwebenv.svg)](https://gitter.im/virtualwebenv/virtualwebenv?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

[![Gitpod](https://img.shields.io/badge/Gitpod-ready--to--code-blue)](https://gitpod.io/#https://github.com/virtualwebenv/virtualwebenv)

---


## Awesome People

VirtualWebEnv is an MIT-licensed open source project with its ongoing development made possible entirely by the support of all these smart and generous people, from code contributors to financial contributors. 💜


### Project Maintainers

<table>
  <tbody>
    <tr>
        <td align="center" valign="top">
            <img width="125" height="125" src="https://github.com/smitshetye.png?s=150">
            <br>
            <strong>Smit Shetye</strong>
            <br>
            <a href="https://github.com/smitshetye">@smitshetye</a>
        </td>
     </tr>
     <tr>
        <td align="center" valign="top">
            <img width="125" height="125" src="https://raw.githubusercontent.com/virtualwebenv/virtualwebenv/master/.github/home-page-images/join-us.png">
            <br>
            <strong>< Join Us ></strong>
            <br>
            <a href="https://github.com/virtualWebenv">@virtualwebenv</a>
        </td>
     </tr>
  </tbody>
</table>

### Code Contributors

[![VirtualWebEnv Contributors][contributors-src]][contributors-href]

### Financial Contributors

[![Open Collective backers][backers-src]][backers-href]

You can support us using any of the methods below:

<b>1:</b> [Open Collective](https://opencollective.com/virtualwebenv)
<br>
<b>2:</b> [Paypal](https://paypal.me/smitshetye)
<br>
<b>3:</b> [Github Sponsors](https://github.com/sponsors/smitshetye)
<br>
<b>4:</b> [Patreon](https://www.patreon.com/smitshetye)

---


## Sponsors

Sponsoring is an act of giving in a different fashion. 🌱


You can sponsor us using any of the methods below:

<b>1:</b> Sponsor via [Open Collective](https://opencollective.com/virtualwebenv/).
<br>
<b>2:</b> Email us at <a href = "mailto: virtualwebenv@gmail.com">virtualwebenv@gmail.com</a>.

*Sponsors logos are displayed on the [github repository](https://github.com/virtualwebenv/virtualwebenv/) page and the [documentation website](https://virtualwebenv.github.io/) home page.*

## License

[MIT](https://github.com/virtualwebenv/virtualwebenv/blob/master/LICENSE) © Smit Shetye


[comment]: # (Open Collective Tiers)

[contributors-src]: https://opencollective.com/virtualwebenv/contributors.svg?width=890&button=false&isActive=true
[contributors-href]: https://github.com/virtualwebenv/virtualwebenv/graphs/contributors
[backers-src]: https://opencollective.com/virtualwebenv/tiers/awesome-backers.svg?width=890&button=false&isActive=true
[backers-href]: https://opencollective.com/VirtualWebEnv#contributors

[gold-sponsors-src]: https://opencollective.com/virtualwebenv/tiers/gold-sponsors.svg?avatarHeight=80&width=890&button=false&isActive=true
[gold-sponsors-href]: https://opencollective.com/VirtualWebEnv#contributors
[silver-sponsors-src]: https://opencollective.com/virtualwebenv/tiers/silver-sponsors.svg?avatarHeight=64&width=890&button=false&isActive=true
[silver-sponsors-href]: https://opencollective.com/VirtualWebEnv#contributors
[bronze-sponsors-src]: https://opencollective.com/virtualwebenv/tiers/bronze-sponsors.svg?avatarHeight=48&width=890&button=false&isActive=true
[bronze-sponsors-href]: https://opencollective.com/VirtualWebEnv#contributors







<br>

