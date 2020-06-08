echo 'cleaning cache'
sudo apt clean all
sudo apt install wget

echo 'installing PostgreSQL'
sudo apt update
sudo apt install postgresql postgresql-contrib
echo "<  <  <  PostgreSQL installed successfully   >  >  >"

echo "Installing JDK"
sudo apt-get update
sudo apt-get install openjdk-8-jdk
java -version
echo "<  <  <  JDK-8 installed successfully   >  >  >"
 