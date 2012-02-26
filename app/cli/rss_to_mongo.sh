#!/bin/bash
. /var/lib/jenkins/.nvm/nvm.sh
nvm use v0.6.11
/var/lib/jenkins/jobs/absolutely_must_not_fail/workspace/node_modules/coffee-script/bin/coffee /var/lib/jenkins/jobs/absolutely_must_not_fail/workspace/app/cli/crawl.coffee
