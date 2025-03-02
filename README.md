# GCP-VM-AutoScaling
# **GCP VM Auto-Scaling and Security Setup**

## **Overview**
This repository contains deployment scripts and configurations for setting up a virtual machine (VM) in Google Cloud Platform (GCP), implementing auto-scaling based on CPU utilization, and configuring security measures such as IAM roles and firewall rules.

## **Contents**
- `vm-setup.sh` - Script to create and configure a VM instance on GCP.
- `autoscale-config.yaml` - Configuration file for setting up auto-scaling policies.
- `firewall-rules.sh` - Script to create and manage firewall rules.
- `iam-roles.sh` - Script to assign IAM roles and permissions.
- `README.md` - This documentation file.

## **Setup Instructions**

### **1. Prerequisites**
- A Google Cloud Platform account.
- `gcloud` CLI installed and authenticated.
- Sufficient IAM permissions to create resources.

### **2. Deploying the VM Instance**
1. Clone this repository:
   ```sh
   git clone 
   cd GCP-VM-AutoScaling
   ```
2. Run the VM setup script:
   ```sh
   chmod +x vm-setup.sh
   ./vm-setup.sh
   ```

### **3. Configuring Auto-Scaling**
1. Apply the auto-scaling policy:
   ```sh
   gcloud compute instance-groups managed set-autoscaling [INSTANCE_GROUP_NAME] --max-num-replicas=5 --min-num-replicas=1 --target-cpu-utilization=0.6 --cool-down-period=90
   ```

### **4. Setting Up Security Measures**
1. Assign IAM roles:
   ```sh
   chmod +x iam-roles.sh
   ./iam-roles.sh
   ```
2. Configure firewall rules:
   ```sh
   chmod +x firewall-rules.sh
   ./firewall-rules.sh
   ```

## **Testing the Setup**
- Verify VM creation under **Compute Engine > VM Instances**.
- Check auto-scaling by simulating high CPU load:
  ```sh
  yes > /dev/null &
  ```
- Validate security rules under **VPC Network > Firewall**.

## **Contributing**
Feel free to fork the repository and contribute improvements via pull requests.

## **License**
This project is licensed under the MIT License.

## **Author**
Gubbala Bhargavi
