# SupraComment.vim

A simple and fast Vim9 commenting plugin inspired by VS Code’s Ctrl + / behavior.

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
| Normal|Visual   |  Ctrl + /   |Toggle comment on current line  |
| Normal|Visual   |  Ctrl + /   |Force comment on current line   |
| Normal|Visual	  |  Ctrl + /   |Force uncomment on current line |

you can use it with a prefix count to comment/uncomment multiple lines.
eg: `3<Ctrl+/>` will toggle comments on the next 3 lines.
