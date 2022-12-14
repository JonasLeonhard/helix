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
rust:
	rustup component add rust-analyzer
	sudo ln -s $(rustup which rust-analyzer) /usr/local/bin/rust-analyzer
lldb-vscode:
	mkdir bin && cd bin
	sudo curl -L https://github.com/vadimcn/vscode-lldb/releases/download/v1.8.1/codelldb-aarch64-darwin.vsix -o "codelldb.zip"
	unzip "codelldb.zip" "extension/adapter/*" "extension/lldb/*"
	mv extension/ bin/codelldb_adapter
	sudo rm "codelldb.zip"
	sudo ln -s bin/codelldb_adapter/adapter/codelldb /usr/local/bin/lldb-vscode
