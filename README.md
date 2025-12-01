# DevSecOps Auto-Remediation Pipeline
Automated pipeline using:
- GitHub Actions
- Trivy Security Scanning
- Email Approval System
- Terraform Cloud Integration
- Auto Remediation Script
- AWS ECR Rebuild + Push

---

## 📌 Features
✔ Scans container images for HIGH/CRITICAL vulnerabilities  
✔ Sends email notification for manual approval  
✔ Triggers remediation script when approved  
✔ Uploads configuration to Terraform Cloud  
✔ Auto builds and deploys secure container images  
✔ Pushes patched image to AWS ECR  
✔ Full skip logic if user declines remediation  

---

## 🗂 Repository Structure
