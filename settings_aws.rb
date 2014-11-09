# Ubuntu Amazon EC2 AMI Finder: https://cloud-images.ubuntu.com/locator/ec2/
#
# Ubuntu AMI recommended: ami-39501209 (Virtualization: hvm, Storage type: ebs,
#                                       arch: amd64, version: 14.04 LTS)
# Type instance recomended: t2.micro (Variable ECUs, 1 vCPUs, 2.5 GHz, Intel Xeon Family,
#                                     1 GiB memory, EBS only)


module SettingsAws
  NAME_VAGRANT = "vagrant-aws-ansible"
  AWS_ACCESS_KEY = ""
  AWS_SECRET_KEY = ""
  AWS_KEY_PEMNAME = "keypair"
  AWS_KEY_PEMPATH = "/home/$USER/keypair.pem"
  AWS_UBUNTU_AMI = "ami-39501209"
  AWS_REGION = "sa-east-1"
  AWS_TYPE_INS = "t2.micro"
  AWS_DEVICE_SIZE = 8
  AWS_DEVICE_NAME = "/dev/sda1"
  AWS_DEVICE_VOL_TYPE = "gp2"
end