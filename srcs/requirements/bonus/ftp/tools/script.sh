#!/bin/sh

adduser --force-badname ME --disabled-password --gecos ""

echo ME:PASS | chpasswd

echo ME >> /etc/vsftpd.userlist

chown ME:ME /content

vsftpd /etc/vsftpd.conf