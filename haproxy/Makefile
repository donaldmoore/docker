BIN=docker
TAG=$(shell cat ./tag)
SHELL=/bin/bash
EDITOR=vi

help:
	@echo "docker management tool 0.01"
	@echo "usage: make <command>"
	@echo ""
	@echo "commands:"
	@echo -e "\tedit\tEdit docker configuration."
	@echo -e "\tshell\tStart an interactive docker session."
	@echo -e "\tstart\tStart a non-interactive docker session."
	@echo -e "\tworld\tBuild a docker image."

Dockerfile: 
	@touch Dockerfile

edit: Dockerfile
	@$(EDITOR) Dockerfile

push: 
	@docker push $(TAG)

shell: CMD=$(SHELL) 
shell: start 

start: world
	@$(BIN) run -i --rm -t $(TAG) $(CMD)

world: Dockerfile
	@$(BIN) build --rm -t $(TAG) .
	@echo "Built on $(shell date)"

.PHONY: help edit push shell start world
