PiAnoS docker
=============

This git repository contains the Dockerfiles allowing an easy development of the PiAnoS software.
To add features to PiAnoS, run this docker-compose file, it will mount the code of PiAnoS as volume, hence automatically reload the new code on change.

I use this container and all the submodules as one piece to develop the new features live, without having to install anything other than docker on my machine.

This version of PiAnoS could also be used as a production version, but some changes have to be done in the configuration, in particular the location of the code and data (see the docker-compose file).
Be aware that future commit to this repository could break your production instance if you 'git pull' simply, in particular regarding database version upgrade.
If you want to make an update to the version via a 'git pull', check the 'git diff' between your version and the latest one, and make a backup of your data (the backup of the database can de done in a .sql file with pg_dump, and reimported in the new database; only to be done if the version of the database changed).

