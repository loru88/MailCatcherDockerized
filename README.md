# MailCatcherDockerized
a custom and very tiny (~40MB) Docker image for MailCatcher

## Setup

to build the image

```
mkdir MailCatcherDockerized && cd MailCatcherDockerized
git clone https://github.com/loru88/MailCatcherDockerized/
docker build . -t MailCatcherDockerized
```

to run launch

```
docker run -d -p 1080:1080 MailCatcherDockerized --name MailCatcherDockerized
```

if you need to enter the container launch

```
docker exec -it MailCatcherDockerized /bin/sh
```

to stop the container launch

```
docker stop MailCatcherDockerized
```
