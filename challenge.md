# Platform Engineer Challenge

## Overview

The goal of this challenge is to demonstrate your skills as a platform engineer by deploying the small Go HTTP server in this directory to a cloud environment, following CI/CD and Infrastructure as Code (IaC) practices.

## Application

You will find a small HTTP server in the `main.go` file that responds to `GET` requests with an HTTP 200 status code and the body "Hello {name}", where `{name}` can be provided by the query string parameter `name`.

Additionally, the "Hello" greeting can be changed by providing configuration. 

If you have the Golang toolchain installed you can compile the `simple-http-server` binary via the following command:

```sh
go build -o simple-http-server
```

To run the binary use:

```sh
./simple-http-server
```

Alternatively, there are a number of pre-built binaries in the `releases` directory.

### Application Configuration

The server allows configuration to be provided via the command line, a configuration file (`simple-http-server.yaml`) and environment variables. For example:
* Configuration file e.g. `greeting`.
* Environment variable e.g. `GREETING`.
* Command line flag e.g. `--greeting`.

## Suggested Actions

- Dockerise the application.
- Deploy the application to a public cloud environment (e.g. AWS, GCP, Azure).
- Use an Infrastructure-as-Code (IaC) tool such as Terraform to provision the cloud.
- Configure a CI/CD pipeline (e.g. CircleCI, Jenkins, GitHub Actions) automatically deploy on code changes.
- Configure the application to change the greeting.

## Time Limit

We do not expect you to spend more than two hours on this challenge. It may not be possible to finish everything you would like inside this timeframe; during the interview there will be an opportunity to discuss why you prioritised what you did, and what your next steps would be.

## Evaluation Criteria

Deployed code is nice, but not essential. If you can show us something representative but not 100% working, that's fine. 

We will be evaluating the quality and readability of your solution, your adherence to Infrastructure-as-Code, CI/CD and security best practises.

## Submission

Please provide a link to a repository containing the code, infrastructure-as-code, and pipeline configuration.

## Good luck!

We are looking forward to seeing your solution and discussing them with you.
