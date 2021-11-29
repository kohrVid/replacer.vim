# replacer.vim

This plugin will help users find and replace terms in a given folder.

<!-- vim-markdown-toc GFM -->

* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Usage](#usage)
* [Mappings](#mappings)
* [License](#license)
* [Bugs](#bugs)
* [Contributing](#contributing)
  * [Documentation](#documentation)
* [Changelog](#changelog)
* [Credits](#credits)

<!-- vim-markdown-toc -->

## Prerequisites

* A machine with a [UNIX-like operating system](https://en.wikipedia.org/wiki/Unix)
* [vim](https://www.vim.org/)

For hacking:

Any updates to the documentation will require:

  * [go](https://golang.org)
  * [md2vim](https://github.com/FooSoft/md2vim) (`go install github.com/FooSoft/md2vim@latest`)

## Installation

To install this plugin with Pathogen:

    cd $HOME/.vim/bundle/
    git clone https://github.com/kohrVid/replacer.vim.git

## Usage

Rename directories:

    :Rename "old_directory", "new_directory"
    :Rename "old_directory", "new_directory", "./path/to/directory/"

Rename files:

    :Rename "old_file", "new_file"
    :Rename "old_file", "new_file", "./path/to/file/"

Find and replace terms in a directory:

    :FindAndReplace "old_term", "new_term"
    :FindAndReplace "old_term", "new_term", "./path/to/file/"

## Mappings

## License

Copyright © 2021 Jessica Été. Distributed under the MIT license.

## Bugs
## Contributing

### Documentation

To generate new documentation, run the following:

    ./doc/generate_vimdoc.sh

## Changelog
## Credits
