docker_compose_version = "1.24.1"

Vagrant.configure("2") do |config|

  # Specify the base box
  config.vm.box = "debian/buster64"

  # Setup port forwarding
  # config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

  # Shell provisioning
  config.vm.provision "shell", path: "provisioning/setup.sh"
  config.vm.provision "shell", path: "provisioning/install_vim.sh"
  config.vm.provision "shell", path: "provisioning/install_git.sh"
  config.vm.provision "shell", path: "provisioning/install_ansible.sh"
  config.vm.provision "shell", path: "provisioning/install_docker.sh", args: [docker_compose_version]
end
