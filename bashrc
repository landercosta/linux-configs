# My functions
changeTitleTab(){
  (flatpak run org.wezfurlong.wezterm cli set-tab-title "$1")
  # (wezterm cli set-tab-title "$1")
}

zuTasksOpen(){
  changeTitleTab "$1"
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
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "organiza"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "tarefas"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "estudo"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "exer"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "grumeiro"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "lazer"
  flatpak run org.wezfurlong.wezterm cli spawn -- bash -ic "contatos"
  flatpak run org.wezfurlong.wezterm cli kill-pane
}