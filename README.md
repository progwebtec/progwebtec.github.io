# README

This is the sourcecode for the web page "progwebtec.github.io", 
the joined webpage for the Programming and Web Technology Group
at Internationale Medieninformatik @ HTW Berlin.

## To contribute / edit the web page:

- you will either need write access to the repo or
- can send a pull request via github

## local setup

The site source code and the hugo theme have their own repos
in the gh organisation https://github.com/progwebtec/ 

- Web Site: https://github.com/progwebtec/progwebtec.github.io
- Theme: https://github.com/progwebtec/greenpage-theme

to build the site locally, you need both.

### Requirements

- node and npm: https://nodejs.org/en/download/package-manager 
- hugo: https://gohugo.io/installation/ 
- go: https://go.dev/doc/install

Hugo is a static web site generator. If you are new to hugo,
you may want to read more about it, e.g.
 - https://gohugo.io/quickstart and 
 - https://about-hugo.github.io/ 


### Quickstart

#### initial setup

```sh
git clone --recurse-submodules git@github.com:progwebtec/progwebtec.github.io.git
git clone git@github.com:progwebtec/classes-module.git
cd progwebtec.github.io
npm install
export HUGO_MODULE_REPLACEMENTS="github.com/progwebtec/classes-module -> ../../classes-module"
hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:4000"  -p 4000 server
```

Then open http://localhost:4000 in your browser.

#### with make and open (on a mac)

```sh
    git clone --recurse-submodules git@github.com:progwebtec/progwebtec.github.io.git
    git clone git@github.com:progwebtec/classes-module.git
    cd progwebtec.github.io
    make
```

Check out the Makefile for more useful commands.


After initial setup, you just need to run
```
export HUGO_MODULE_REPLACEMENTS="github.com/progwebtec/classes-module -> ../../classes-module"
hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:4000"  -p 4000 server
```

or 

```
make
```
if using make.

#### Classes are now in an own git repo included as Hugo Module!

The classes have been moved to an own github repo https://github.com/progwebtec/classes-module

To enable local changes in the classes-module, you need to clone it and
set the HUGO_MODULE_REPLACEMENTS environment variable to make hugo using this
local directory rather than the module downloaded from github.

Every push to the main branch in the classes-module also triggers a full deploy on 
progwebtec.github.io and bkleinen.github.io


