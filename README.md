# Welcome to Mike's Super Shoddy Pile of Links and Notes

1. ## Installing
    1. [Install Stuff](./install-notes.html)
    1. [Dotfile Management](./dotfile-stuff.html)
1. ## The Best Coding
    1. [Commit message ~plagiarism~ inspiration](./committing-good.html)
    1. ### Java For Days
        1. [Stream snippits I stole](stream-cheatsheet.html)
1. ## CLI/TUI Fanboy





### Pulling down dots

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

## Here's random stuff I thought was important at the time I read it.

### Really great commit message examples stolen from <https://deno.land/std@0.153.0>

Examples of good titles:

* fix(http): Fix race condition in server
* docs(fmt): Update docstrings
* feat(log): Handle nested messages

Examples of bad titles:

* fix #7123
* update docs
* fix bugs



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
