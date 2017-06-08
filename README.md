[![Build Status](https://travis-ci.org/plues/plues.github.io.svg?branch=sourceFiles)](https://travis-ci.org/plues/plues.github.io)

The master branch contains the generated source files of [plues.github.io](https://plues.github.io)

We use the [jekyll-multiple-languages-plugin](https://github.com/Anthony-Gaudino/jekyll-multiple-languages-plugin). 
Therefore, we need to provide a precompiled version of the Jekyll sources to run on GitHub Pages.

Run `bundle exec jekyll build` locally to generate the static source files located in the `_site/` subdirectory.
To build the website on localhost run `bundle exec jekyll serve`.

On remote the build and deploy to the master branch is automated using TravisCI so just push your changes to the sourceFiles branch.
