sudo apt update -y
# Add Jenkins GPG key and repository
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
# Update your system and install Jenkins
sudo apt update -y
sudo systemctl start jenkins
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins -l
java -version
sudo apt install -y openjdk-17-jdk
java -version
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
docker stop jenkins
docker rm jenkins
docker run -d   --name jenkins   -p 8080:8080 -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
docker --version
docker stop jenkins
docker rm jenkins
docker run -d   --name jenkins   -p 8080:8080 -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
sudo lsof -i :8080
docker ps  # Get container ID using 8080
sudo netstat -tulnp | grep :8080
ps -fp 74644
sudo kill 74644
sudo netstat -tulnp | grep :8080
docker run -d   --name jenkins   -p 8080:8080 -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
docker rm jenkins
docker ps -a
docker run -d   --name jenkins   -p 8080:8080 -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
curl http://169.254.169.254/latest/meta-data/public-ipv4
sudo cat /var/jenkins_home/secrets/initialAdminPassword
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
