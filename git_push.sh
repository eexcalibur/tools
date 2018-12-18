#!/bin/sh

if [ $? -ne 0  ]; then
exit 1
fi

MAIN = "dev"
ME = "feature-v1"

#for ME branch
git push
git pull
git merge origin/${MAIN}
git push

#for MAIN branch
git checkout ${MAIN}
git pull
git merge ${ME}
git push

git checkout ${ME}

#for master branch
