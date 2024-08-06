# assignment_QA
this repo is assignment to test

# Test Automation Project

## Overview

This project includes automated test scripts for verifying the login functionality of a web application. 

## Prerequisites

- **Python** (version 3.6 or above)
- **Robot Framework** (install via `pip install robotframework`)
- **Selenium Library** (install via `pip install robotframework-seleniumlibrary`)
- **ChromeDriver** (download from [here](https://sites.google.com/chromium.org/driver/) and place it in your PATH)

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/your-repository-url.git
    ```

2. Navigate to the project directory:
    ```bash
    cd project-root
    ```

3. Install the required packages:
    ```bash
    pip install -r requirements.txt
    ```

4. Place the ChromeDriver executable in your PATH.

## Execution

To run the test cases, use the following command:
```bash
robot tests/login_tests.robot
