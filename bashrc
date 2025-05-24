# My functions
changeTitleTab(){
  (flatpak run org.wezfurlong.wezterm cli set-tab-title "$1")
  # (wezterm cli set-tab-title "$1")
}

# My alias
alias wezterm='flatpak run org.wezfurlong.wezterm'
# alias nvim='flatpak run io.neovim.nvim'
alias estudo="cd ~/Dropbox/zuTasks/estudoZuTasks;python3 zuTasks.py"
alias exer="cd ~/Dropbox/zuTasks/exercZuTasks;python3 zuTasks.py"
alias grumeiro="cd ~/Dropbox/zuTasks/grumeiroZuTasks;python3 zuTasks.py"
alias lazer="cd ~/Dropbox/zuTasks/lazerZuTasks;python3 zuTasks.py"
alias organiza="cd ~/Dropbox/zuTasks/orgZuTasks;python3 zuTasks.py"
alias tarefas="cd ~/Dropbox/zuTasks/tarefasZuTasks;python3 zuTasks.py"
