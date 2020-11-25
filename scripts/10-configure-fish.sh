echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s `which fish`
curl -L https://get.oh-my.fish | fish
