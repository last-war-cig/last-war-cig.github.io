.PHONY: act dry-act

codespace-preview:
	hugo server -b https://$(CODESPACE_NAME)-1313.app.github.dev --disableFastRender --appendPort=false --port 1313 --minify -D
act:
	act -s GITHUB_TOKEN=$(GITHUB_TOKEN) --container-architecture linux/amd64
dry-act:
	act -n -s GITHUB_TOKEN=$(GITHUB_TOKEN) --container-architecture linux/amd64

