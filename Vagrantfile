docker_compose_version = "1.24.1"

Vagrant.configure("2") do |config|

  # Specify the base box
  config.vm.box = "debian/buster64"

  # Setup port forwarding
  # config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

  #
  # Shell provisioning
  #
  config.vm.provision "shell", path: "provisioning/shell/setup.sh"
  config.vm.provision "shell", path: "provisioning/shell/install_ansible.sh"
  # config.vm.provision "shell", path: "provisioning/shell/install_vim.sh"
  # config.vm.provision "shell", path: "provisioning/shell/install_git.sh"
  # config.vm.provision "shell", path: "provisioning/shell/install_docker.sh", args: [docker_compose_version]

  #
  # Run Ansible from the Vagrant Host
  #
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "provisioning/ansible/playbook.yml"
  end
end
