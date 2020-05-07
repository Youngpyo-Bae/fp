PiAnoS docker
=============

This git repository contains the Dockerfiles allowing an easy development of the PiAnoS software.
To add features to PiAnoS, run this docker-compose file, it will mount the code of PiAnoS as volume, hence automatically reload the new code on change.

I use this container and all the submodules as one piece to develop the new features live, without having to install anything other than docker on my machine.

This version of PiAnoS could also be used as a production version, but some changes have to be done in the configuration, in particular the location of the code and data (see the docker-compose file).

