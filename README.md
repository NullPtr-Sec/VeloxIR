## VeloxIR v1.0.0 - Core DFIR

This is the initial public release of VeloxIR, a Streamlit-based Digital Forensics and Incident Response (DFIR) orchestration framework. Python-based

### 🚀 Core Capabilities
* **Automated EVTX Triage:** Integrated Chainsaw execution for local and remote Windows Event Logs against SigmaHQ rules.
* **Live YARA Hunting:** Recursive file system scanning utilizing `yara-python` and the Neo23x0 signature-base.
* **Memory Forensics:** Automated physical RAM acquisition via WinPmem integration and code injection analysis using Volatility 3 (`windows.malfind`).
* **Enterprise Reporting:** Automated generation of TLP:RED executive PDF reports aggregating all triggered IOCs and analyst notes.

### 🛠️ Technical Architecture
* Fully automated environment setup via `setup.ps1` (Administrator privileges required).
* After setup, start via `run.bat`
* Dynamic acquisition of external binaries and rule sets (Chainsaw, WinPmem, Sigma, YARA) at runtime to ensure compliance with third-party open-source licenses and maintain a minimal repository footprint.
* Strict Python virtual environment (`venv`) isolation for forensic integrity.

### ⚠️ Installation Note
**Do not** look for external binaries attached to this release asset list. 
Download the `Source code (zip)`, extract it to your forensic workstation, and execute `setup.ps1` as Administrator. The script will automatically resolve dependencies and build the required DFIR environment.

DFIR start localhost:
After setup via setup.ps1, start the run.bat within the directory.
