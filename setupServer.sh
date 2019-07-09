#!/usr/bin/env bash
apt-get update
apt-get install unzip
apt-get update
apt-get install maven -y
apt install -y openjdk-8-jdk
cd /var/lib
wget "https://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip"
unzip wildfly-10.1.0.Final.zip
rm wildfly-10.1.0.Final/standalone/configuration/standalone.xml
cp ~/WildflySetupBasic/standalone.xml wildfly-10.1.0.Final/standalone/configuration/
sh wildfly-10.1.0.Final/bin/standalone.sh &
