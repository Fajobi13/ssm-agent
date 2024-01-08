#Install SSM Agent on OnPremise RHEL8 Servers
#!/bin/bash
cd /tmp
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl stop amazon-ssm-agent
# edit the code, id and region in the command below
sudo amazon-ssm-agent -register -code "wmvUCJVDQwWF753SFE06" -id "53222db9-1595-4f67-aa9c-6ec31e868225" -region "us-east-2"
sudo systemctl start amazon-ssm-agent
sudo systemctl enable amazon-ssm-agent
sudo systemctl status amazon-ssm-agent





#Hybrid Activation Code and Activation ID
Activation Code = wmvUCJVDQwWF753SFE06
Activation ID = 53222db9-1595-4f67-aa9c-6ec31e868225
