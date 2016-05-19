# automkdir.vim

Makes Vim prompt to create missing directories when saving a file.

Typically useful when you want to create a file in a directory that does not
yet exist -- instead of printing an error and having you go around create that
directory and then continue creating the file, you'll just be asked if the
directory should be created and can get on with it.

The mkdir-hook itself is a slight variation of Damian Conway's ["Conditionally
autocreating non-existent directories"][1] example.

[1]: http://www.ibm.com/developerworks/library/l-vim-script-5/#N104CE


## Installation

If you don't have a preferred installation method, I recommend installing
[pathogen.vim][2], and then simply copy and
paste:

    cd ~/.vim/bundle
    git clone git://github.com/earl/vim-automkdir.git

[2]: https://github.com/tpope/vim-pathogen


## Licence

Copyright © Andreas Bolka. Distribtued under the same terms as Vim itself. See
`:help license` and the accompanying `LICENSE` file.
