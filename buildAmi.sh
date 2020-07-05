echo 'ubuntu version'
sudo lsb_release -a

echo 'cleaning cache'
sudo apt clean all
sudo apt install wget


echo "Installing JDK-8"
sudo apt-get update
sudo apt-get install openjdk-8-jre-headless -y
# sudo apt install -t jessie-backports  openjdk-8-jre-headless ca-certificates-java
java -version
echo "<  <  <  JDK-8 installed successfully   >  >  >"


echo "Installing code-deploy-agent"
sudo apt-get update
sudo apt-get install ruby -y
sudo apt-get install wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
echo "codedeploy-agent status"
# sudo service codedeploy-agent status

 