#!/bin/bash

useradd -r -M -s /sbin/nologin -c "Socks user" -u 1000 $SUSER
(echo $PASSWD; echo $PASSWD) | passwd $SUSER
