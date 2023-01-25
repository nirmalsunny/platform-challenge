# Senior Platform Engineer Interview Challenge

## Overview

The goal of this challenge is to demonstrate your skills as a senior platform engineer by deploying a small Go HTTP server and adding a CI pipeline to this code.

## Requirements

- The server should be deployed to a public cloud environment (e.g. AWS, GCP, Azure).
- The server should be deployed using an Infrastructure-as-Code (IaC) tool (e.g. Terraform, CloudFormation).
- The server should be deployed using a CI/CD pipeline (e.g. CircleCI, Jenkins, GitHub Actions).
- The server should be configured to automatically scale up or down based on incoming traffic.
- The server should be configured to automatically roll out new versions of the code.
- The server should be configured to automatically roll back to the previous version of the code if an error occurs.

## Code

You will find the code for the HTTP server in `main.go` file. The code creates a basic HTTP server that responds to requests with a HTTP 200 status code and the body "Hello {name}", where {name} is a configurable value loaded from an environment variable.

## Time Limit

The challenge is expected to take no more than two hours to complete.

## Evaluation Criteria

- How well the server is deployed and configured in the chosen cloud environment.
- How well the server is configured to automatically scale up or down based on incoming traffic.
- How well the server is configured to automatically roll out new versions of the code.
- How well the server is configured to automatically roll back to the previous version of the code if an error occurs.
- The quality and maintainability of the code and infrastructure-as-code.
- The quality of the documentation and explanations provided.

## Submission

Please provide a link to a repository containing the code, infrastructure-as-code, and pipeline configuration. Also, please provide a brief summary of how you spent your time and how you would expand this given more time.

## Good luck!

We are looking forward to seeing your solutions and discussing them with you.
