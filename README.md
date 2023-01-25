# Senior Platform Engineer Interview Challenge

## Overview

The goal of this challenge is to demonstrate your skills as a senior platform engineer by deploying a small Go HTTP server and adding a CI pipeline to this code.

## Requirements

- The server should be deployed to a public cloud environment (e.g. AWS, GCP, Azure).
  - You don't actually need to deploy this, you could just have the code in place to do so?
- The server should be deployed using an Infrastructure-as-Code (IaC) tool (e.g. Terraform, CloudFormation).
- The server should be deployed using a CI/CD pipeline (e.g. CircleCI, Jenkins, GitHub Actions).

## Code

You will find the code for the HTTP server in `main.go` file. The code creates a basic HTTP server that responds to requests with a HTTP 200 status code and the body "Hello {name}", where {name} can be provided by query string parameter `name`.

Additionally, the "Hello" prefix can be changed by providing a `GREETING` ENV var.

## Time Limit

You should spend no longer than two hours on this challenge. You may not be able to finish everything you would like inside this timeframe - be ready to explain how you prioritised what you did, and what your next steps would be.

## Evaluation Criteria

- Adherence to Infrastructure-as-Code and CI/CD best practices.
- Deployed code is nice, but not essential. If you can show us something representative but not 100% working, that's fine. Be ready to discuss how you would make it work.
- The readability of the submission.

## Submission

Please provide a link to a repository containing the code, infrastructure-as-code, and pipeline configuration. Also, please provide a brief summary of how you spent your time and how you would expand this given more time.

## Good luck!

We are looking forward to seeing your solutions and discussing them with you.
