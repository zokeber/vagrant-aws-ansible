# Deployment: Vagrant + AWS Provider + Ansible

## Requirements

- Vagrant 1.2 or newer.
- Plugins [Vagrant AWS Provider](https://github.com/mitchellh/vagrant-aws).
- Ansible 1.2 or newer.
- Ubuntu Amazon EC2 AMI.

## Features

- Launch an AWS EC2 Ubuntu instance custom.
- Upgrade and the reboot OS.
- Compile and install "Nginx" + "Ngx Pagespeed" from the source.
- Provision the instance with basic configuration for mongodb and supervisor.
- Install virtualenvwrapper

## Configuration

1. Add your [AWS access key ID](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html) and your AWS secret access key into file settings_aws.rb
2. In EC2 Dashboard create the keypair for instance and download in your computer and then add the name and the path to keypair in your computer.
3. Search your AMI preference in [Ubuntu Amazon EC2 AMI Finder](https://cloud-images.ubuntu.com/locator/ec2/).
4. Edit region and type instance into file settings_aws.rb
5. Edit the volume size into file settings_aws.rb
6. Set the [volume type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) into file settings_aws.rb

### Ansible configuration

1. Edit your hostname into file playbook.yml in the directory /ansible/.
2. Edit and add your domain into file playook.yml
3. Edit the directory of your webapp.
4. Edit the path when into your webapp.
5. If your prefer edit the path for the virtualenvs into the file playbook.yml

### Quick Start

1. Edit configuration for vagrant into Vagrantfile.
2. Edit configuration for ansible provisioning.
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