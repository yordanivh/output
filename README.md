# output
This repo contains code that utilises the output command

## What this repo does
This repo has code that will create a aws instance which is in the free tier and will output its public ip and dns, and private ip and dns.

## Why use this repo
This repo is valuable in order to get an overview of how the output command works

## How to use this repo

 * Create a user in AWS, you require these two keys in order to be able to create resources in AWS
 ```
 AWS_ACCESS_KEY_ID
 AWS_SECRET_ACCESS_KEY
 ```
 * To use them you have to set them as environment variables by putting these two lines in ~/.bash_profile
 ```
 export AWS_ACCESS_KEY_ID=*your key id*
 export AWS_SECRET_ACCESS_KEY=*your access key*
 ```
 * Install Terraform
 ```
 https://www.terraform.io/downloads.html
 ```
 
 * Clone this repository
 ```
 git clone https://github.com/yordanivh/ouput
 ```
 
 * Change directory
 ```
 cd output
 ```
 
 * Initialize the project ( Terraform will download provider plugins)
 
 ```
 terraform init
 ```
 
 * Plan the operation so that you see what actions will taken
 
 ```
 terraform plan
 ```
 
 * Run Terraform apply to create the resources
 ```
 terraform apply
```

*At the end of the apply, all the outputs will be computer, and will be displayed at the end of the apply command:
```
Outputs:

private_dns = ip-172-31-17-57.us-east-2.compute.internal
private_ip = 172.31.17.57
public_dns = ec2-3-15-166-108.us-east-2.compute.amazonaws.com
public_ip = 3.15.166.108
```

*If you would like to display just one output in particular, you can use `terraform output <name>`
example:

```
output (newbranch) $ terraform output public_dns
ec2-3-15-166-108.us-east-2.compute.amazonaws.com
output (newbranch) $ terraform output public_ip
3.15.166.108
```


* To destroy the created resources

 ```
 terraform destroy
 ```
## Sample output
1. Init command will download necessary plugins
```
output (newbranch) $ terraform  init

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "aws" (hashicorp/aws) 2.41.0...
The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 2.41"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

2.Plan will give you  a plan of action
```
output (newbranch) $ terraform  plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.output_example will be created
  + resource "aws_instance" "output_example" {
      + ami                          = "ami-0d5d9d301c853a04a"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t2.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + network_interface_id         = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tenancy                      = (known after apply)
      + volume_tags                  = (known after apply)
      + vpc_security_group_ids       = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```
3.Apply make the actions as per the plan.At the end of the apply you can see the command output in action.

```
output (newbranch) $ terraform  apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.output_example will be created
  + resource "aws_instance" "output_example" {
      + ami                          = "ami-0d5d9d301c853a04a"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t2.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + network_interface_id         = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tenancy                      = (known after apply)
      + volume_tags                  = (known after apply)
      + vpc_security_group_ids       = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.output_example: Creating...
aws_instance.output_example: Still creating... [10s elapsed]
aws_instance.output_example: Still creating... [20s elapsed]
aws_instance.output_example: Still creating... [30s elapsed]
aws_instance.output_example: Creation complete after 39s [id=i-08aacd7561ed279df]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

private_dns = ip-172-31-7-82.us-east-2.compute.internal
private_ip = 172.31.7.82
public_dns = ec2-18-223-237-33.us-east-2.compute.amazonaws.com
public_ip = 18.223.237.33
```
4.Use Destroy to remove the resources.

```
output (newbranch) $ terraform  destroy
aws_instance.output_example: Refreshing state... [id=i-08aacd7561ed279df]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.output_example will be destroyed
  - resource "aws_instance" "output_example" {
      - ami                          = "ami-0d5d9d301c853a04a" -> null
      - arn                          = "arn:aws:ec2:us-east-2:938620692197:instance/i-08aacd7561ed279df" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "us-east-2a" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 1 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - id                           = "i-08aacd7561ed279df" -> null
      - instance_state               = "running" -> null
      - instance_type                = "t2.micro" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-02584516fb80ae85c" -> null
      - private_dns                  = "ip-172-31-7-82.us-east-2.compute.internal" -> null
      - private_ip                   = "172.31.7.82" -> null
      - public_dns                   = "ec2-18-223-237-33.us-east-2.compute.amazonaws.com" -> null
      - public_ip                    = "18.223.237.33" -> null
      - security_groups              = [
          - "default",
        ] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-c4534bac" -> null
      - tags                         = {} -> null
      - tenancy                      = "default" -> null
      - volume_tags                  = {} -> null
      - vpc_security_group_ids       = [
          - "sg-879339e5",
        ] -> null

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - volume_id             = "vol-0fb91b90fc2048464" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.output_example: Destroying... [id=i-08aacd7561ed279df]
aws_instance.output_example: Still destroying... [id=i-08aacd7561ed279df, 10s elapsed]
aws_instance.output_example: Still destroying... [id=i-08aacd7561ed279df, 20s elapsed]
aws_instance.output_example: Still destroying... [id=i-08aacd7561ed279df, 30s elapsed]
aws_instance.output_example: Destruction complete after 32s

Destroy complete! Resources: 1 destroyed.
```
