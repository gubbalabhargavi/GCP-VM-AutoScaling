# GCP-VM-AutoScaling

# **GCP VM Auto-Scaling and Security Setup**

## **Overview**
This repository contains deployment scripts and configurations for setting up a virtual machine (VM) in Google Cloud Platform (GCP), implementing auto-scaling based on CPU utilization, and configuring security measures such as IAM roles and firewall rules.

## **Contents**
- `vm-setup.sh` - Script to create and configure a VM instance on GCP.
- `autoscale-config.yaml` - Configuration file for setting up auto-scaling policies.
- `firewall-rules.sh` - Script to create and manage firewall rules.
- `iam-roles.sh` - Script to assign IAM roles and permissions.
- `autoscale-test.sh` - Script to stress test CPU and trigger auto-scaling.
- `README.md` - This documentation file.

## **Setup Instructions**

### **1. Prerequisites**
- A Google Cloud Platform account.
- `gcloud` CLI installed and authenticated.
- Sufficient IAM permissions to create resources.

### **2. Deploying the VM Instance**
1. Clone this repository:
   ```sh
   git clone https://github.com/gubbalabhargavi/GCP-VM-AutoScaling
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

### **5. Testing Auto-Scaling**
- Verify VM creation under **Compute Engine > VM Instances**.
- Check auto-scaling by simulating high CPU load:
  ```sh
  chmod +x autoscale-test.sh
  ./autoscale-test.sh
  ```
- Validate security rules under **VPC Network > Firewall**.

## **Auto-Scaling Test Script Explanation (`autoscale-test.sh`)**
The `autoscale-test.sh` script is used to artificially increase CPU utilization to trigger auto-scaling. It continuously generates high CPU usage, causing new VM instances to be created.

**Script:**
```sh
#!/bin/bash
# Script to simulate high CPU load and trigger auto-scaling

# Run a CPU-intensive process in the background
stress --cpu 4 --timeout 300 &
echo "High CPU load test initiated. Check instance scaling in Compute Engine."
```

## **Contributing**
Feel free to fork the repository and contribute improvements via pull requests.

## **License**
This project is licensed under the MIT License.

## **Author**
Gubbala Bhargavi

