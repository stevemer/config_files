alias sshcaen='ssh stevemer@caen-vnc17.engin.umich.edu'
alias sshgrader='ssh stevemer@style183.eecs.umich.edu'
git() { if [[ $@ == "log" ]]; then command git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all; else command git "$@"; fi; }
function sshme()
{
  scp ~/.bashrc $1:~/TEST
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
