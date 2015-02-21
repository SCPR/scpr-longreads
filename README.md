## SCPR Longreads

A front-end project with a Middleman workflow optimized for quickly building out longform KPCC articles. The eventual idea is to have a modular and well-documented set of components designed for reuse across many KPCC longform articles, establishing a unified style for these types of presentations.

### Getting Started

This project depends on [Middleman](https://middlemanapp.com/), a static site generator. You'll need Ruby >= 1.9.3 and the Bundler gem installed on your machine in order to run it. Once you've met those requirements, run `gem install middleman`. 

Now `cd` into the project directory and run `bundle install` to install any remaining gem dependencies. Once that's done, run `bundle exec middleman server`, which will start up Middleman and host your project on a local web server running at http://0.0.0.0:4567. Read more about that on the [Middleman docs](https://middlemanapp.com/basics/development_cycle/).

Once you're done building and your site is ready to deploy, you'll want to run the `bundle exec middleman build` command, which takes your source files and builds them into static files ready for serving on the web. More explanation can be found [here](https://middlemanapp.com/basics/build_and_deploy/).

### Some Notes About Front-End Dependencies and Templating

This project users [Bower](http://bower.io/) to manage third-party packages related to front-end development, which live in the `bower_components/` directory. In practice, this is mostly useful for getting javascript libraries into your project. The [Bower homepage](http://bower.io/) explains how to install and use it in your project.

We also use SCSS for stylesheet authoring, and Slim for templating. These are opinionated choices, and Middleman doesn't force you to use them, but you'll have to make some `config.rb` changes if you want to use plan HTML, or some other templating system like HAML. 

### Organization

The project follows Middleman conventions about directory structure. Assets are stored in their own directories inside `source/`:

* fonts
* images
* javascripts
* stylesheets

Middleman allows for both Layouts and Partials, much like a Rails project. These also get stored in top-level directories inside the `source/` directory.

Currently, each "longread" is also stored in its own directory inside `source/`, alongside assets, layouts and partials. This should probably change at some point, at least consolidating all assets into a single "assets" directory to make things cleaner. 



