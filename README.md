# (SCTP) Cloud Infrastructure Engineering Capstone Project Group 1

## Case 1: DevOps (Static Website)

# Company Profile
![group1](https://github.com/sharil12/Group1_Capstone_Project/assets/137068325/69fdc467-9a0c-42d0-852e-bfba91720490)


**From blueprint to blast-off in record time.** We're the DevOps alchemists, transforming your ideas into lightning-fast, scalable websites that leave the competition in the dust. Thinking of launching your dream into the cloud? 

**GroupOne** is your launchpad. We combine cutting-edge DevOps practices with AWS Cloud agility to build and scale your website for rapid growth. We harness the power of DevOps and AWS Cloud to deliver efficient, reliable, and cost-effective web solutions. Streamline your workflow, enhance performance, and ensure constant uptime with our expertise in automation, infrastructure management, and cloud security.

We represent our client, Etrain Pte Ltd, an online education training provider, to develop and deploy a newly revamped website for their new look, utilizing modern cutting edge AWS cloud computing technology and DevOps principles to manage deployments. 

> **Team Members: Wei Zhimin, Caroline Lee, Ng Mun Wai Dior, Ramesh D, Sharil Reiza**

# System Architecture & Technology Stack
![archi](https://github.com/sharil12/Group1_Capstone_Project/assets/137068325/7918978e-ed14-4780-be31-91a4521fb68d)

The AWS Cloud Architecture consists of the following:

-   S3 bucket set up in three environments (Dev, UAT, Prod)

## Technology Stack

 - Infrastructure as Code Tool: *Terraform*
 - Infrastructure Environment Management: *Terraform Workspaces*
 - CICD Tool: *Github Actions*
 - Package/Vulnerability Scans: *Snyk & Checkov Scans **

***Disabled in production due to open bucket policy design*

# Branching Strategy

## Development Branch (Dev)

-   The dev branch, short for development branch, serves as the primary integration branch for ongoing development work.
-   Developers regularly merge their completed feature branches into the dev branch for integration testing and collaboration.
-   Continuous integration practices are often implemented on the dev branch, allowing automated testing and verification of code changes.

## User Acceptance Testing Branch (UAT)

 

 - The UAT branch, also known as the staging branch, serves as the User Acceptance Test (UAT) for ongoing testing. 
 - It acts as a staging area for testing before deploy Production environment



## Production Branch (Prod)

-   Represents the production-ready state of the application.
-   It contains stable and thoroughly tested code that is ready to be deployed to the live environment.
-   Only fully reviewed and approved code changes are merged from stage into the production branch.
-   It is typically protected, meaning that direct commits or modifications are restricted, and changes can only be introduced through pull requests after thorough code review and testing.

## Workflow Management

![updated brancj](https://github.com/sharil12/Group1_Capstone_Project/assets/137068325/ee37aa08-2a50-4384-abb9-5d5f2a033963)

<br> The workflow from dev branch to prod:</br> 
<br> from dev branch, create a pull request to get the state of the code of the dev branch. Our code changes or amendment, is pushed directly to branch </br>
<br> Perform code commit for example as `git add . --> git commit -m "push to dev" --> git push` &nbsp; &nbsp; </br>
<br> From github console, create a new pull request from `dev/new-code` to `uat`  , get the approval and merge the pull request. this will trigger a deployment in `uat` </br>
<br> to deploy to prod, from your github console, create a new pull request from `uat` to `prod` , get the  approvals and merge the pull request. this will trigger a deployment in `prod` </br>

### Approval Processes (Branch Protections)

The production branch is protected and a single approval is required for all pull requests before merging into a new branch. 

![Picture8](https://github.com/sharil12/Group1_Capstone_Project/assets/137068325/b7dfe6c7-7096-4b85-afe0-8d48195612e4)
![Picture7](https://github.com/sharil12/Group1_Capstone_Project/assets/137068325/a16725db-d483-4ecc-b07b-1f4165ad1edd)

# Outputs and Conclusion
![web](https://github.com/sharil12/Group1_Capstone_Project/assets/137068325/1eb03437-3192-4692-893a-456248bf18a6)

Although relatively simple, we have used Terraform Workspaces and the use of .tfvars file to manage the infrastructure resources across multiple environments effective. In Case 1: DevOps, we demonstrated a CICD pipeline to pushdown a static HTML website to an S3 bucket in Dev, to UAT, to Prod. This mimics the real world where we typically do not touch the production environment (and its resources) until ready to deploy - this is managed through effective branching strategies. 
