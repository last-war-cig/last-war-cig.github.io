.PHONY: act dry-act
act:
	act -s GITHUB_TOKEN=$(GITHUB_TOKEN) --container-architecture linux/amd64
dry-act:
	act -n -s GITHUB_TOKEN=$(GITHUB_TOKEN) --container-architecture linux/amd64