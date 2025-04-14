https://roadmap.sh/projects/nginx-log-analyser

# Nginx Log Analyser

This project is a simple command-line tool to analyze Nginx access logs. It's designed to practice basic shell scripting skills.

## Project Goal

The goal of this project is to create a shell script that reads an Nginx log file and provides specific information about the requests.

## Requirements

Create a shell script that reads the log file and provides the following information from the logfile:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

## Usage

1. Clone or download this repository to your local machine.

2. Make the script executable by running the following command in your terminal:

   ```
   chmod +x log-analyser.sh
   ```

3. Run the script by providing the path to your Nginx log file:

   ```
   ./log-analyser.sh [PATH-LOG-FİLE] [NUMBER]
   ```

