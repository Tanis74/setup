# DevOps Workstation Setup with Ansible

This Ansible playbook automates the setup of a development workstation focused on DevOps, containerization, and cloud infrastructure tooling. It's designed to work on Ubuntu-based systems including WSL2 and Multipass virtual machines.

## Purpose

This playbook provisions a Linux development environment with essential tools for:

- Container development and orchestration (Docker, Kubernetes)
- Infrastructure as Code (Terraform)
- Package management and system maintenance
- Cloud-native development workflows

## Supported Environments

- **WSL2** with Ubuntu
- **Multipass** VMs running Ubuntu
- Other Ubuntu-based systems

## Tools Installed

### System Packages
- Essential system utilities and package management tools
- Bash completion support
- Security certificates and transport utilities

### Container Technologies
- **Docker** - Container runtime and tooling
- **Docker Compose** - Multi-container application management

### Kubernetes Tooling
- **kubectl** - Kubernetes command-line interface
- **Helm** - Kubernetes package manager
- **minikube** - Local Kubernetes clusters
- **k9s** - Terminal UI for Kubernetes
- **kubectx** - Kubernetes context switching
- **Krew** - Kubernetes plugin manager

### Infrastructure as Code
- **Terraform** - Infrastructure provisioning tool

## Prerequisites

1. Ubuntu-based Linux environment (WSL2, Multipass, or native)
2. Internet connection for package downloads
3. Sudo privileges for package installation

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/Tanis74/setup.git
   cd setup
   ```

2. Run the bootstrap script to install Ansible:
   ```bash
   sudo sh bootstrap.sh
   ```

3. Execute the playbook:
   ```bash
   ansible-playbook -K playbook.yml
   ```

## What This Playbook Does

The playbook is organized into two main roles:

1. **Packages Role**: Updates the system and installs essential packages
2. **Ops Role**: Installs DevOps and cloud-native tooling including:
   - Docker and Docker Compose
   - Kubernetes tools (kubectl, Helm, minikube)
   - Terraform for infrastructure provisioning
   - Additional Kubernetes utilities (k9s, kubectx, Krew)

## Customization

You can customize the installed versions by modifying the variables in `roles/ops/defaults/main.yml`:
- Kubernetes version
- Krew version
- k9s version
- minikube version

## Troubleshooting

### Ansible World Writable Directory Warning

If you encounter permissions issues, fix them with:
```bash
chmod 700 /path/to/setup
```

This commonly occurs with WSL installations.

## Acknowledgments

This project was inspired by various Ansible workstation setup repositories and community resources for DevOps environment automation.
