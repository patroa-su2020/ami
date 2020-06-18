echo 'cleaning cache'
sudo apt clean all
sudo apt install wget

echo "Installing JDK-8"
sudo apt-get update
sudo apt install openjdk-8-jre-headless -y
java -version
echo "<  <  <  JDK-8 installed successfully   >  >  >"
 