help:
	@echo "Run: 'hx --health' to see a list of installable lsp's."
	@echo "This installer uses instructions from: https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers , to install lsps"
	@echo "Run: 'make [lang]' to install"
bash:
	npm i -g bash-language-server
docker:
	npm install -g dockerfile-language-server-nodejs
php:
	npm install -g intelephense
javascript typescript:
	npm install -g typescript typescript-language-server
css scss json html:
	npm i -g vscode-langservers-extracted
toml:
	cargo install taplo-cli --locked --features lsp
vue:
	npm install -g vls
