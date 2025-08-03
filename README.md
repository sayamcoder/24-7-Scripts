# GitHub Codespace Keep-Alive Script

A simple shell script to prevent a GitHub Codespace from automatically shutting down due to inactivity.

> ⚠️ **IMPORTANT WARNING: READ THIS FIRST**
>
> Using this script to run a Codespace 24/7 for hosting, bots, or any non-development, unattended process is **against the [GitHub Acceptable Use Policies](https://docs.github.com/en/site-policy/acceptable-use-policies/github-acceptable-use-policies#2-conduct-restrictions)**.
>
> -   **Risk of Suspension**: Circumventing the inactivity timeout can lead to warnings, suspension of your Codespace access, or even suspension of your entire GitHub account.
> -   **Cost**: Running a Codespace 24/7 will quickly consume your free monthly core hours. You will be billed for any usage beyond your included quota.
> -   **Unreliability**: This method is a hack and is not guaranteed to work forever. GitHub can change its inactivity detection at any time.
>
> **It is strongly recommended to use a proper hosting service for any application that needs to run 24/7.** See the [Better Alternatives](#-better-alternatives-for-247-hosting) section below.

## What It Does

GitHub Codespaces are designed for interactive development and will automatically shut down after a period of inactivity (default is 30 minutes) to conserve resources. This script simulates activity to prevent this from happening.

## How It Works

The `keep-alive.sh` script works by performing a minor write operation to a log file every 10 minutes. This I/O operation is typically sufficient to be registered as "activity" by the Codespace, resetting the inactivity timer.

## Setup and Usage

Follow these steps within your GitHub Codespace terminal.

#### 1. Clone the Repository (or Create the File)

You can either clone this repository or manually create the script file.

```bash
# Option A: Clone the repo
git clone https://github.com/sayamcoder/24-7-Scripts/
cd 24-7-Scripts

# Option B: Manually create the file
# Create the file
touch keep-alive.sh
# Paste the script content into it using nano or the VS Code UI
nano keep-alive.sh
