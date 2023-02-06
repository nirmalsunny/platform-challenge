# Platform Engineer Challenge - Solution

## Pre-requisite
- Install [terraform v1.3.7](https://www.terraform.io/downloads.html)
- Setup the [aws cli credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) with `default` profile name.


## Steps to reproduce the solution
 - In order to create the resources for remote state backend, inside the `infra/remote_state` directory, run the commands below. (locally)

    ```sh
    terraform init
    ```
    This command will initialise a working directory containing Terraform configuration files.

    ```sh
    terraform apply
    ```
    Review the plan and once happy with the plan, type 'yes' and hit enter. This will create s3 bucket and lock table for keeping remote state for other tf projects.

 - Once the remote state is configured, ECR can be setup for both dev and prod environment. ECR is where the build images are stored to be deployed. Inside the `infra/envs/dev/ecr' directory, run the same commands as above in the same order.

 - Repeat the above step inside the `infra/envs/prod/ecr' directory. Now the registery for both environments should be setup.

 - Before pushing the code to the Github, setup the environments (dev and prod) with 'Required reviewers' as protection rule to be asked for approval prior to deployment. 

 - Also, setup the 'Repository secrets' with aws credentials. The following secrets are required:
   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - TF_USER_AWS_KEY
   - TF_USER_AWS_SECRET

   The AWS_ACCESS_KEY_ID is used to push the images to ECR. Hence, it only requires the necessary `AmazonEC2ContainerRegistry` policy.

   Rest of the tasks are performed with the `TF_USER_AWS_KEY`. Ideally, a non-root user must be setup and their credentials should be used. The required policies can be added as needed.

 - Once the code is pushed to the Github, any changes made to the `main` branch should trigger the CI/CD workflow. On further changes, the image will be built, pushed to ECR and deployed to ECS automatically.

 The challenge can be found [here](challenge.md)