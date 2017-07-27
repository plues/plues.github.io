# [plues.github.io](https://plues.github.io)

[![Build Status](https://travis-ci.org/plues/plues.github.io.svg?branch=sourceFiles)](https://travis-ci.org/plues/plues.github.io)

This sourceFiles branch contains all the files needed to build the website.
The master branch contains the generated source files of
[plues.github.io](https://plues.github.io)

We use the [jekyll-multiple-languages-plugin](https://github.com/Anthony-Gaudino/jekyll-multiple-languages-plugin).
Therefore, we need to provide a precompiled version of the Jekyll sources to run on GitHub Pages.


## Development

Run `bundle exec jekyll build` locally to generate the static source files located in the `_site/` subdirectory.
To build the website on localhost run `bundle exec jekyll serve`.

## Dependencies

To install the required tools run:

* `gem install bundler`
* `bundle install`

## Deployment

The website is built and deployed using
[TravisCi](https://travis-ci.org/plues/plues.github.io).

Once pushed the `sourceFiles` branch is built and the result is commited and
pushed to the `master` branch, thus updating the website.
