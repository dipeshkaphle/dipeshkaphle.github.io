+++
title = "Helpful Emacs Shortcuts"
date = "2023-06-20"
+++

- Useful commands page for someone else
  [Emacs-reminders](http://irreal.org/emacs-reminders.html)

- `describe-bindings` or `SPC h b b` is super helpful for knowing what happens
  when you press stuff
- `describe-prefix-bindings` can be used to see bindings in current mode.
- `SPC h` is for help related stuff, same as `C-h`
- `C-h k` or `SPC h k` or `describe-key` will give information about keys you
  press when it prompts you.
- `C-h j` and `C-h k` will move to next page and previous page when there's a
  which-key buffer and there's multiple pages for a particular key press
- All `describe-*` is super helpful. There's `describe-variable`,
  `describe-command`, `describe-function` and so on.
- `C-M-h` -> mark-defun will select a whole function
- If you want to open a file that's in some text, you can select it and then
  just press `gF` to jump to it(this is evil mode binding). Command:
  `evil-find-file-at-point-with-line` .This works with line numbers also so if
  there's something of form <file-name>:line, this is super useful. This
  helps when you have file names and line names in error messages, you can
  easily jump to that file+line
- Use `maximize-window` to maximize one window in splits and do `winner-undo` to undo it
- `C-M-SPC` -> `mark-sexp` will select the next ast node(sort of), repeating it
  more will move forward. `C-M-<left>` will move backward
- `fill-paragraph` is nice for formatting text (with max width), bound to `M-q`.
  In `tuareg-mode`,`M-q` is bound to `tuareg-indent-phrase` which helps in
  formatting comments in ocaml
- Registers are there in emacs too. `C-x r s <reg-name>` to copy things to a
  register and `C-x r i <reg-name>` or `consult-register` followed by
  `<reg-name>` to paste it. If you're using evil mode, the usual vim way can be
  used `"<reg-name>y/p`. More info can be found in
  [emacswiki](https://www.emacswiki.org/emacs/Registers)
- Very useful emacs stuff at [emacsrocks.com](https://emacsrocks.com/)
- [Flyspell](https://www.emacswiki.org/emacs/FlySpell) is super helpful
- `apropos` is super helpful, like a regex search for emacs commands(`SPC-h-a`
  in doom, `C-h-a` also works)
- `C-u <param> M-x <command>` will run `<command>` with `<param>`. This is
  useful when say you have `mark-sexp`, you maybe mark an extra sexp, so you'd
  do `C-u -1 M-x mark-sexp`(for evil mode(doomemacs) it's
  `SPC-u -1 M-x mark-sexp` )
- `dired-toggle-read-only` allows to change(makes dired editable) whatever we
  want in dired buffer(can be helpful for renaming mostly and probably many
  other things too). To finish edit `wdired-finish-edit` and to abort
  `wdired-abort-changes`
- Some cool things
  [here](https://karthinks.com/software/fifteen-ways-to-use-embark/)
