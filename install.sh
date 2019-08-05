#!/bin/bash

sudo yum update -y
sudo yum install -y httpd
sudo echo /var/www/index.html
sudo systemctl restart httpd
sudo systemctl enable httpd
