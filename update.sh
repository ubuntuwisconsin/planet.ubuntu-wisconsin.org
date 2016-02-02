#!/bin/bash

# Change dir
cd /srv/hosted/planet.ubuntu-wisconsin.org/

# git reset because we have to, then pull
git reset --hard
git pull

# Run cronjob to update
python planet.py /srv/hosted/planet.ubuntu-wisconsin.org/config.ini

# Push to git
#git commit -am "Automatic Update (cron on hosting server)"
#git push

exit 0
