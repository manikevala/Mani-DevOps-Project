### 1) Launch EC2 & Install Jenkins

sudo apt update
sudo apt install openjdk-17-jdk -y

### Add Jenkins GPG key and repo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#### ✅ This step is required after adding the repo
sudo apt update

### 2) Now install Jenkins
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

---

### 3) Allow Inbount Traffic in EC2
Security → Security groups → Inbound Rules - Create one new

### 4) Then open your browser:
Public IP Address:8080 -> Enter

### 5) Copy Paste the security code 

### 6) Restart the Jenkins 
IP-Address:8080/restart
 
