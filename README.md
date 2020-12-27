# hacker geno project presenetaion at remote chaosWest expierience


# THIS IS STILL WIP


## preface

In this repo you'll find all file for the presentation held by @ajuvo, 
@L3D and @therojam at rc3 ChaosWest Channel.


## Dependencies:
- texlive
- pandoc

## manual workflow

### Get sources (with submodules)
`git clone --recursive git@github.com:hacker-coop/rc3-presentation.git`


### Update submodules (theme)
`git submodule update`

### Build
`pandoc presentation.md --pdf-engine xelatex -t beamer -o presentation.pdf`

## script/automated workflow

```
 sh -c "$(wget https://github.com/hacker-coop/rc3-presentation/install.sh -O -)"
```
