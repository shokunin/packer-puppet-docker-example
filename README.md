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

3)  Build using packer

```
sudo packer build packer.json
```

4) Running the container

```
