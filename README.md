## Welcome to Mike's Super Shoddy Pile of Links and Notes

Ubuntu Install

```shell
builtin cd ~ && \
/usr/bin/mkdir -pv Documents/nstall && builtin cd Documents/nstall && \
/usr/bin/sudo /usr/bin/apt update && \
{ builtin command -v wget || /usr/bin/sudo /usr/bin/apt install wget; } && \
/usr/bin/wget --https --secure-protocol=TLSv1_3 https://raw.githubusercontent.com/mike2point71/install/main/ubuntu/install_start_point.sh && \
./install_start_point.sh
```

Pulling down dots

```shell
builtin alias dtf="$(builtin if builtin command -v brew && builtin command -v $(brew --prefix)/bin/git; builtin then builtin echo "$(brew --prefix)"; builtin else builtin echo "/usr")"/bin/git --git-dir='$HOME/.dotfiles' --work-tree='$HOME'"

if builtin command -v brew && builtin command -v $(brew --prefix)/bin/git; then pfx="$(brew --prefix)"; else pfx='/usr' fi; alias dtf="$pfx/bin/git --git-dir='$HOME/.dotfiles' --work-tree='$HOME'"
```






You can use the [editor on GitHub](https://github.com/mike2point71/mike2point71.github.io/edit/main/README.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/mike2point71/mike2point71.github.io/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
