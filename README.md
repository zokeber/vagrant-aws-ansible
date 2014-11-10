# Deployment: Vagrant + AWS Provider + Ansible

## Requirements

- Vagrant 1.2 or newer
- Plugins [Vagrant AWS Provider](https://github.com/mitchellh/vagrant-aws)
- Ansible 1.2 or newer
- [Ubuntu Amazon EC2 AMI](https://cloud-images.ubuntu.com/locator/ec2/)

## Features

- Launch an AWS EC2 Ubuntu instance custom.
- Upgrade and the reboot OS.
- Compile and install "Nginx" + "Ngx Pagespeed" from the source.
- Provision the instance with basic configuration for mongodb and supervisor
- Install virtualenvwrapper

## Configuration

1. Add your [AWS access key ID](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html) and your AWS secret access key in settings_aws.rb
2. In EC2 Dashboard create the keypair for instance and download in your computer and then add the name and path to keypair in your computer
3. Search your AMI preference in [Ubuntu Amazon EC2 AMI Finder](https://cloud-images.ubuntu.com/locator/ec2/)
4. Edit region and type instance in settings_aws.rb
5. Edit the volume size in settings_aws.rb
6. Set the [volume type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in settings_aws.rb

### Ansible configuration

1. Edit hostname in the playbook.yml file located in the /ansible/ directory
2. Add your domain in playbook.yml file
3. Edit the name directory of webapp
4. If your prefer edit the path storage for the virtualenvs in the playbook.yml file

### Quick Start

1. Edit configuration in the settings_aws file
2. Edit configuration for ansible provisioning in the playbook.yml file
3. Run vagrant instance:

```
$ vagrant up --provider=aws
```


### Dependencies

None

### License

"Deployment: Vagrant + AWS Provider + Ansible" is available under MIT License.

### Author Information

Daniel Lopez Monagas <zokeber@gmail.com>