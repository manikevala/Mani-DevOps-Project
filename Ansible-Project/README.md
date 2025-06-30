# Ansible Basic Project (Beginner Friendly)

---

## 🖥️ Step-by-Step Setup

### ✅ 1. Launch Two EC2 Instances (Ubuntu)

- Create two EC2 instances:
  - **Main EC2** – Control node (where Ansible is installed)
  - **Target EC2** – Managed node (where tasks will run)

---

### ✅ 2. Install Ansible on Main EC2

```bash
sudo apt update
sudo apt install ansible -y
ansible --version

### ✅ 3. Setup Passwordless SSH Access
ssh-keygen
ls ~/.ssh

### ✅ 4.To run the target server
ssh ubuntu@<target-ec2-ip> OR
ssh ip_address

### ✅ 5.Create Files
Create inventory file
create playbooks

### ✅ 6.To run the target server

[target]
<target-ec2-ip> ansible_user=ubuntu   OR
IP Address

### ✅ 7.Run the Ansible Playbook
ansible-playbook -i inventory file_name.yml




