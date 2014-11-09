require_relative 'settings_aws.rb'
include SettingsAws

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider :aws do |aws, override|

    config.vm.box = NAME_VAGRANT
    config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"

    # AWS Credentials:
    aws.access_key_id = AWS_ACCESS_KEY
    aws.secret_access_key = AWS_SECRET_KEY
    aws.keypair_name = AWS_KEY_PEMNAME

    # AWS Location:
    aws.region = AWS_REGION
    aws.region_config AWS_REGION, :ami => AWS_UBUNTU_AMI
    aws.instance_type = AWS_TYPE_INS
    aws.tags = {
      'Name' => NAME_VAGRANT,
    }

    # AWS Storage:
    aws.block_device_mapping = [{
      'DeviceName' => AWS_DEVICE_NAME,
      'Ebs.VolumeSize' => AWS_DEVICE_SIZE,
      'Ebs.DeleteOnTermination' => false,
      'Ebs.VolumeType' => AWS_DEVICE_VOL_TYPE,
    }]

    # SSH:
    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = AWS_KEY_PEMPATH
  end

  # Ansible provisioning:
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    ansible.verbose = "true"
  end
end