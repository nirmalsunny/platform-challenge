# Senior Platform Engineer Interview Challenge

## Overview

The goal of this challenge is to demonstrate your skills as a senior platform engineer by deploying the small Go HTTP server in this directory to a cloud environment, following CI/CD and Infrastructure as Code (IaC) practices

## Application

You will a small HTTP server in the `main.go` file that responds to requests with a HTTP 200 status code and the body "Hello {name}", where {name} can be provided by query string parameter `name`.

Additionally, the "Hello" greeting can be changed by providing a `GREETING` ENV var.

If you have the golang toolchain installed you can compile this image by:

```sh
# This will generate a `simple-http-server` binary
go build main.go -o simple-http-server
./simple-http-server
```

Alternatively, there are a number of pre-built binaries in the `./releases/` directory.

## Suggested actions

- Dockerise the application
- Deploy the application to a public cloud environment (e.g. AWS, GCP, Azure).
- Use an Infrastructure-as-Code (IaC) tool such as terraform to provision the cloud.
- Configure a CI/CD pipeline (e.g. CircleCI, Jenkins, GitHub Actions).
- Configure the application to change the greeting.

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
