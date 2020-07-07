echo 'ubuntu version'
sudo lsb_release -a

echo 'cleaning cache'
sudo apt clean all
sudo apt install wget

while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo 'Waiting for cloud-init...'; sleep 1; done

sudo apt-get update
echo "Installing JDK-8"
sudo apt-get install openjdk-8-jre-headless -y
# sudo apt install -t jessie-backports  openjdk-8-jre-headless ca-certificates-java
java -version
echo "<  <  <  JDK-8 installed successfully   >  >  >"

echo "Installing code-deploy-agent"
sudo apt-get install ruby -y
sudo apt-get install wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
echo "codedeploy-agent status"
# sudo service codedeploy-agent status

cd /home/ubuntu
echo "Downloading cloud watch for us-east-1"
# wget https://s3.amazonaws.com/amazoncloudwatch-agent/centos/amd64/latest/amazon-cloudwatch-agent.rpm
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
echo "cloud watch downloaded successfully"
chmod +x ./amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb

echo "Enabling cloudwatch service"
sudo systemctl enable amazon-cloudwatch-agent.service

echo "Starting cloudwatch service"
sudo systemctl start amazon-cloudwatch-agent.service

echo "Listing all services"
systemctl list-unit-files --type=service
 