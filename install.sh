#!/bin/bash

sudo yum update -y
sudo yum install -y httpd
sudo bash -c 'cat << EOF > /var/www/html/index.html

<HTML>
   <HEAD>
      <TITLE>
         Hello World
      </TITLE>
   </HEAD>
<BODY>
   <H1>TEST</H1>
   <P>This is test  "hello world" HTML document.</P> 
</BODY>
</HTML>
EOF'

sudo systemctl restart httpd
sudo systemctl enable httpd
