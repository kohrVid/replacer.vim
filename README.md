# replacer.vim

This plugin will help users find and replace terms in a given folder.

<!-- vim-markdown-toc GFM -->

* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Usage](#usage)
* [Commands](#commands)
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

    :RenameDirs "old_directory", "new_directory"
    :RenameDirs "old_directory", "new_directory", "./path/to/directory/"

Rename files:

    :RenameFiles "old_file", "new_file"
    :RenameFiles "old_file", "new_file", "./path/to/file/"

Find and replace terms in a directory:

    :FindAndReplace "old_term", "new_term"
    :FindAndReplace "old_term", "new_term", "./path/to/file/"

## Commands

\*:FindAndReplace\* [args]      `FindAndReplace` finds instances of the first
                            argument across multiple files and replaces it
                            with the second argument. By default, find and
                            replace is run across all visible files in the
                            current project directory. If needed a different
                            relative file path can be specified as a third
                            argument. To prevent issues with git, the
                            command cannot alter hidden files.

\*:RenameDirs\* [args]          `RenameDirs` recursively renames directories in
                            a relative path. By default, it renames
                            subdirectories of the current project's location
                            by replacing instances of the first argument
                            with the second argument in the new directory
                            name. If needed, a different path to the
                            directories can be specified as a third
                            argument.

\*:RenameFiles\* [args]         `RenameFiles` recursively renames files at
                            a relative path. By default, it renames files
                            located in the current directory (and its
                            subdirectories) by replacing instances of the
                            first argument with the second argument in the
                            new file name. If needed, a different path to
                            the file can be specified as a third argument.


## License

Copyright © 2021 Jessica Été. Distributed under the MIT license.

## Bugs
## Contributing

### Documentation

To generate new documentation, run the following:

    ./doc/generate_vimdoc.sh

## Changelog
## Credits
