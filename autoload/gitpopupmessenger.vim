function! gitpopupmessenger#update_popup() abort
  popupc
  let col = len(getline('.')) + 3
  call popup_create(s:get_git_message(), { "moved": "any", "line": "cursor", "col": col, "highlight": "Comment" })
endfunction

function! s:get_git_message() abort
  return "git message"
endfunction

function! gitpopupmessenger#start() abort
  autocmd CursorMoved * call gitpopupmessenger#update_popup()
endfunction
