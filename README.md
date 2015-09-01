# Gnu sed binary release

This repo uses and alpine linux based docker image to build a single binary static gnu sed 4.2.2.

## Usage

You can download it from the [release page](https://github.com/sequenceiq/docker-gnused-linux-bin/releases)

The oneliner install is:
```
curl -L https://github.com/sequenceiq/docker-gnused-linux-bin/releases/download/v4.2.2/sed-linux-4.2.2.tgz | tar -xz -C /usr/local/bin/
```

## Background

Different linux distributions use different package managers, so the way you install gnu sed varies.
We wanted to have a simple `curl | tar -xz` type oneliner which works on all linux flavor.
