#!/bin/bash
which docker
whoami
pwd
docker run -it --rm lforlinux/terraform:0.14.5 init

