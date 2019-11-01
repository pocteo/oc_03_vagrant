SHELL=/bin/bash -o pipefail

init:
	$(MAKE) start

start:
	vagrant up

reload:
	vagrant reload

rebuild:
	 $(MAKE) destroy && $(MAKE) start

destroy:
	vagrant destroy -f

ssh:
	vagrant ssh

stop:
	vagrant halt
