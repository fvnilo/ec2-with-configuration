# ec2 with configuration

This repo illustrates how to create an EC2 instance with Terraform and how to use ansible to configure the instance automatically.

It uses a [demo ansible repository](https://github.com/nylo-andry/ansible-demo-playbook) to pull the configuration.

## Getting Started

1. Make sure you adjust the terraform backend configuration if needed in the [provider.tf](/provider.tf) file.

2. Run terraform

    ```
    terraform init
    terraform plan
    terraform apply
    ```

3. Wait a bit and go see if nginx was properly installed on your instance by going to http://<IP-OF-INSTANCE>
