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

Hugo is a static web site generator. If you are new to hugo,
you may want to read more about it, e.g.
 - https://gohugo.io/quickstart and 
 - https://about-hugo.github.io/ 


### Quickstart


```sh
git clone --recurse-submodules git@github.com:progwebtec/progwebtec.github.io.git
cd progwebtec.github.io
npm install
hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:4000"  -p 4000 server
```

Then open http://localhost:4000 in your browser.

#### with make and open (on a mac)

```sh
    git clone --recurse-submodules git@github.com:progwebtec/progwebtec.github.io.git
    cd progwebtec.github.io
    make
```

Check out the Makefile for more useful commands.

#### Classes are not in a Hugo Module

https://www.youtube.com/watch?v=r0-3Hk5QOo4

go mod init - in project that imports as well as module
