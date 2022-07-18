# SSH config generator

Generate ssh-config from your ansible hosts.

## Static inventory

> ansible-playbook -i ansible_hosts_file ssh-config.yml

## Dynamic inventory

Make sure your dynamic inventory files (*.py) have execution mode grants.

### AWS

You should be logged in through `aws` cli.

> ansible-playbook -i ./aws/ec2.py ssh-config.yml 

### Digital Ocean

> DO_API_TOKEN=your_token ansible-playbook -i ./digital_ocean/digital_ocean.py ssh-config.yml