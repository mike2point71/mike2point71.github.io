
# Ubuntu Install Miscellany

## In theory, this should get an ubuntu install rolling.  In reality, the domain isn't bound up correctly yet

```shell
builtin cd ~ && \
/usr/bin/mkdir -pv Documents/nstall && builtin cd Documents/nstall && \
/usr/bin/sudo /usr/bin/apt update && \
{ builtin command -v wget || /usr/bin/sudo /usr/bin/apt install wget; } && \
/usr/bin/wget --https --secure-protocol=TLSv1_3 https://raw.githubusercontent.com/mike2point71/install/main/ubuntu/install_start_point.sh && \
./install_start_point.sh
```


## Pulling down dots (a riff on [this excellent Atlassian article](https://www.atlassian.com/git/tutorials/dotfiles))

```shell
if builtin command -v brew && builtin command -v $(brew --prefix)/bin/git; then pfx="$(brew --prefix)"; else pfx='/usr' fi;
$pfx/bin/git clone --bare git@github.com:mike2point71/dots.git $HOME/.dotfiles && \
alias dtf="$pfx/bin/git --git-dir='$HOME/.dotfiles' --work-tree='$HOME'" && \
tfile="$(mktemp)" && \
if dtf checkout 2>"$tfile"; then
  :  # This means good
else
  cat "$tfile" | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{} && \
  dtf checkout --recurse-submodules
fi && \
```
