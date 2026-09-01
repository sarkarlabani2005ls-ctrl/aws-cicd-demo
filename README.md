# Free-tier CI/CD demo

This is a deliberately tiny static website. The AWS pipeline will:

1. Read this project from GitHub.
2. Validate it in AWS CodeBuild.
3. Deploy it using AWS CodeDeploy to one Amazon Linux EC2 instance.

## Cost guardrails

- Use a single EC2 instance that the AWS Console identifies as free-tier eligible for the account.
- Use a V1 CodePipeline; AWS includes one free active V1 pipeline each month.
- Use CodeBuild `general1.small` and keep under its 100 free build minutes per month.
- Create no load balancer, NAT gateway, database, Elastic IP, CloudFront distribution, or paid domain.
- Create a small monthly AWS Budget alert before provisioning.
- Delete the pipeline, EC2 instance, CodeDeploy application/deployment group, S3 artifact bucket, and IAM roles once the demo is complete.

## Files

- `index.html` — the site to change
- `buildspec.yml` — CodeBuild validation and output selection
- `appspec.yml` — CodeDeploy deployment instructions
- `scripts/` — commands run by CodeDeploy on the server
