# Terraform Automation

A project to demonstrate how to automate terraform workflow with Github Actions.

* Github Actions after creating a pull request
![image](https://user-images.githubusercontent.com/33374159/143871982-d2972a02-f2fa-458e-8d79-3cde681cc7ed.png)

* Github Actions after Merging to **main** branch
![image](https://user-images.githubusercontent.com/33374159/143872424-59e53e0e-6475-4b81-a853-c5c147ec645f.png)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development purpose.

## Prerequisites

To get started with this project you need a basic knowledge of the following.
```
Version Control (Git)
Terraform
AWS
```

## Automating Terraform with Github Actions

* Login to your AWS account and generate `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
* After that, login to your Terraform Cloud account. Create a new workspace and select **API-driven workflow**.
* Then navigate to the **Variables** tab and click on **Add variable**. Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` with their respective values.
* From your Terraform Cloud User Settings, click on **Tokens** and generate an API token named `GitHub Actions`.
* Add the token to your Github repository as a secret. Name the secret `TF_API_TOKEN`.

* Clone and open your Github repo on your code editor.
* Checkout to a new branch with `git checkout -b <branch-name>`.
* Add your changes with `git add .` and commit the changes with a message using `git commit -m "<commit-message>"`.
* Then push your changes with `git push`.
* Go back to the Github repository and generate a pull request from the new branch. You can view the status of the job through the pull request created, Actions tab or the Terraform Cloud workspace.
* Then merge the pull request.

## Author

* [Mariam Adedeji](https://github.com/mariehposa)

## Acknowledgments

* Github
* Forem