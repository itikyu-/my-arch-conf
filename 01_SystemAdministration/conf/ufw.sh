#!/bin/sh

ufw reset
ufw default deny
ufw allow SSH
ufw enable

ufw status
