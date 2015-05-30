Example build of a docker container using packer/puppet/r10k
============================================================

1)  Install r10k

```
bundle install
```

2)  Install the puppetfile

```
cd puppet/
r10k puppetfile install
```

3)  Set your environment for exporting the docker image to docker hub

create a set_env.sh file similar to the following at the top of the repo
```
cat << EOF > set_env.sh
export DOCKERHUB_EMAIL="MY_EMAIL"
export DOCKERHUB_USERNAME="DH_USERNAME"
export DOCKERHUB_PASSWORD="DH_PASSWD"
export DOCKERHUB_SERVER="index.docker.io"
EOF
. ./set_env.sh
```

4)  Build using packer

```
sudo packer build packer.json
```

5) Running the container

```
docker pull maguec/packer-puppet-example
docker run --name test123  maguec/packer-puppet-example "/bin/ps"
```

