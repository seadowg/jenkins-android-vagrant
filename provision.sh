# Install Git
sudo apt-get update
sudo apt-get -y install git

# Install JDK
sudo apt-get update
sudo apt-get -y install openjdk-7-jdk

# Install Android
wget http://dl.google.com/android/android-sdk_r24.0.2-linux.tgz
tar -xzvf android-sdk_r24.0.2-linux.tgz
rm android-sdk_r24.0.2-linux.tgz
mv android-sdk-linux /usr/local/android-sdk

# Install Android Tools
echo y | /usr/local/android-sdk/tools/android update sdk --filter platform-tools --no-ui --force -a
echo y | /usr/local/android-sdk/tools/android update sdk --filter build-tools-21.1.2 --no-ui --force -a

# Install Android APIs
echo y | /usr/local/android-sdk/tools/android update sdk --filter android-22 --no-ui --force -a
echo y | /usr/local/android-sdk/tools/android update sdk --filter extra-android-support --no-ui --force -a
echo y | /usr/local/android-sdk/tools/android update sdk --filter extra-android-m2repository --no-ui --force -a

# Install Jenkins
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get -y install jenkins

# Start Jenkins
sudo /etc/init.d/jenkins start
