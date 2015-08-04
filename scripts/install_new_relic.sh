#!/bin/bash -ex

rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm || true
yum install -y newrelic-php5 || true

export NR_INSTALL_SILENT=true
#export NR_INSTALL_KEY=your_new_relic_key_here
export NR_INSTALL_KEY=e5cf82d521c776534e952ef536f50438e3dde404
newrelic-install install
