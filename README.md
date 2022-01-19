# homebrew-mac

`brew tap alexmyczko/mac`

Now you can install
```
- modplug-tools
- iselect
- form
- Casks/pt2-clone
- Casks/ft2-clone
- Casks/flying-toasters
```

# Updating above list

`find . -name "*.rb" |sort -r | sed s,./,-\ ,1 | sed s,.rb,,g >> README.md`
