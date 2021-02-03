#!/bin/sh

node.addService(rspec.Execute(shell="/bin/sh",
                              command="sudo apt update"))
node.addService(rspec.Execute(shell="/bin/sh",
                              command="sudo apt install -y apache2"))
node.addService(rspec.Execute(shell="/bin/sh",
                              command='sudo ufw allow in "Apache Full"'))
node.addService(rspec.Execute(shell="/bin/sh",
                              command='sudo systemctl status apache2'))
