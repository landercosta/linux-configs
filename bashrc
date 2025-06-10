# My functions
changeTitleTab(){
  (flatpak run org.wezfurlong.wezterm cli set-tab-title "$1")
  # (wezterm cli set-tab-title "$1")
}

zuTasksOpen(){
  changeTitleTab "$1"
  trap 'exec bash' SIGINT
  cd ~/Dropbox/zuTasks/${1}ZuTasks
  python3 zuTasks.py
}

contatos(){ zuTasksOpen contatos; }
estudo(){ zuTasksOpen estudo; }
exer(){ zuTasksOpen exer; }
grumeiro(){ zuTasksOpen grumeiro; }
lazer(){ zuTasksOpen lazer; }
organiza(){ zuTasksOpen organiza; }
tarefas(){ zuTasksOpen tarefas; }

allTasks(){
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "organiza; exec bash;"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "tarefas; exec bash;"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "estudo; exec bash;"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "exer; exec bash;"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "grumeiro; exec bash;"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "lazer; exec bash;"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "contatos; exec bash;"
  flatpak run org.wezfurlong.wezterm cli kill-pane
}