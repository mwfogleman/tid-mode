tid-mode is an Emacs major mode for editing TiddlyWiki5 .tid files.

# Functionality

* derived from text-mode
* opens automatically in .tid files
* uses the orgstruct and subword minor modes
* updates the modified times when you save a .tid file

# Usage

Right now, you need to copy tid-mode.el to a local folder, load
and require it. Here's how I'm doing that:

    (load (expand-file-name
            (concat user-emacs-directory "site-lisp/tid-mode/tid-mode.el")))
    (require 'tid-mode)

# Roadmap

While tid-mode.el's basic functionality accomplishes everything I
originally desired from a TiddlyWiki mode, it could absolutely do
more. Here are some ideas that could be implemented in the future:

* Add helper function for locating source directory of wiki, and
  setting it to a variable.
* Add a function for creating a .tid file from within Emacs.
* Add a function for launching the node.js server within Emacs.
* Work with other kinds of TiddlyWikis.

# Contributing

If you are using TiddlyWiki and Emacs, I welcome suggestions, pull
requests, and the like.


