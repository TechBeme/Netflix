
# Manual Setup and Execution Guide for Python Code

If the provided batch file does not work, follow these step-by-step instructions to manually set up and run the Python code.

### Step 1: Download and Install Python

1. **Visit the Python official website:** Go to [python.org](https://python.org) and navigate to the Downloads section. Choose the Python version suitable for your operating system.
2. **Install Python:** Download the installer and run it. Ensure to check the option "**Add Python to PATH**" before clicking on "Install Now".
3. **Verify Installation:** Open a command prompt (CMD) and type:
   ```
   python --version
   ```
This command should display the Python version number if it was successfully installed.

Step 2: Set Up the Python Environment
1. **Open Command Prompt: Use CMD or your preferred terminal.**
2. **Create a Virtual Environment: Navigate to your project's directory and run:**
    ```
    python -m venv venv
    ```
This command creates a new directory named venv where all dependencies will be installed.
Activate the Virtual Environment: Before installing the packages, activate the virtual environment by running:
    ```
    venv\Scripts\activate
    ```
On activation, your command prompt should prefix with (venv), indicating that you are inside a virtual environment.

Step 3: Install Dependencies
1. Upgrade pip (optional but recommended): Ensure you have the latest version of pip by running:
    ```
    pip install --upgrade pip
    ```
2. Install Required Libraries: Install all the required libraries using the requirements.txt file with the following command:
    ```
    pip install -r requirements.txt
    ```
    Make sure that requirements.txt is located in your current directory.

Step 4: Run Python Code

Run the Python Script: After the setup is complete and all dependencies are installed, you can run the Python script by typing:
```
python netflix.py
```
