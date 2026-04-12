# SupraComment.vim

A simple and fast Vim9 commenting plugin inspired by VS Code’s Ctrl + / behavior.

![SupraComment](https://github.com/user-attachments/assets/0bced39b-271c-449a-a7fd-0b5effc67239)

## Features

- 🔁 Toggle comments like VS Code (Ctrl + /)
- ✍️ Works in Normal and Visual mode
- ⚡ Written in Vim9script

## 🎯 Supports

- Toggle comment (VS Code style)
- Force comment
- Force uncomment

## ⌨️  Shortcuts

| Mode            | Keybinding  |            Action              |
|-----------------|-------------|--------------------------------|
| Normal Visual   |  Ctrl + /   |Toggle comment on current line  |
| Normal Visual   |     \       |Force comment on current line   |
| Normal Visual	  |  Ctrl + \   |Force uncomment on current line |

you can use it with a prefix count to comment/uncomment multiple lines.
eg: `3<Ctrl+/>` will toggle comments on the next 3 lines.

## ⚙️ Customization

If you want to change the default keybindings, you can map your own keys to the `<Plug>` targets. SupraComment will automatically detect your custom mappings and disable the defaults.

Add these to your `.vimrc` or `init.vim`:

```vim
# Change Toggle Comment (default: Ctrl + /)
map gc <Plug>(SupraComment)
vmap gc <Plug>(SupraComment)

# Change Force Comment (default: \)
map gC <Plug>(SupraCommentForce)
vmap gC <Plug>(SupraCommentForce)

# Change Force Uncomment (default: Ctrl + \)
map gu <Plug>(SupraUnCommentForce)
vmap gu <Plug>(SupraUnCommentForce)
```

Since these are <Plug> mappings, you should use map (or nmap/vmap) instead of noremap to allow Vim to resolve the internal plugin commands.
