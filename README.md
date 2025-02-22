# Create New Terraform Project Template

![workflow badge](https://github.com/ntu-ce8/create-new-terraform-project-template/actions/workflows/terraform-lint.yaml/badge.svg)

Creates a new Terraform project with GitHub Workflow

## Tasks for owner

### 1. Add repository secrets

Run this command to see your AWS credentials.

```sh
cat ~/.aws/credentials
```

Create repository secrets for your AWS credentials:

1. `AWS_ACCESS_KEY_ID`
2. `AWS_SECRET_ACCESS_KEY`

### 2. Import rulesets

You can find the rulesets at `.github/rulesets/require-pull-request.json`. Import this to your rulesets.

### 3. Update workflow badge

Update the badge so that it reflects your workflow by changing these parameters: `{user}`, `{repo}`, and `{workflow}`.

```txt
https://github.com/{user}/{repo}/actions/workflows/{workflow}.yaml/badge.svg
```

## Before you commit changes

Run the following command to sync your feature branch with the main branch:

```sh
git pull origin main
```

Run the following command to fomat your code:

```sh
terraform fmt -recursive
```

Run the following command to lint your code:

```sh
tflint --format=compact
```
