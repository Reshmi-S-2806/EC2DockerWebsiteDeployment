# EC2DockerWebsiteDeployment
# Deployed a Static Website on AWS EC2 Using Docker

A.This project demonstrates how to deploy a simple static HTML website using:
Docker,
GitHub,
AWS EC2 (Ubuntu).

This is a beginner-friendly DevOps project that teaches the basics of containerization and cloud deployment.

B.Project Structure
project-folder/
->index.html
->Dockerfile

C.Step 1 in vscode:
1. Index.html2.Dockerfile: FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 803.Manually upload these files to the github
repository

D.Step 2 in AWS:
1. Create ec2 instance(ubuntu)
2.Go to security groups
3.give the security group rules like TCP 80
0.0.0.0/0 and all
4.save those changes

E.Step 3 in command prompt:
1.ssh -i "C:\Users\Reshmi S\Downloads\reshmiec2.pem" ubuntu@54.225.4.144
2. .pem file is already downloaded while creating
instances with key value pair generation
3.sudo apt update
4.sudo apt install docker.io -y->installing docker
5.sudo systemctl start docker->to start docker
6.sudo systemctl enable docker
7. docker –version->to check the version of docker
8. Clone the github repository ->git clone
https://github.com/Reshmi-S2806/EC2DockerWebsiteDeployment.git
9.Go to that folder->cd
EC2DockerWebsiteDeployment.
10. Build docker image-># from repo root
sudo docker build -t demo-site:latest .
11.sudo docker run -d --name demo-site \
 --restart unless-stopped \
 -p 80:80 \
 demo-site:latest
12. List running containers
sudo docker ps

F.Step 4 in browser:
Type ->http://54.225.4.144/ That is the Public IPv4 of EC2 instances


