" Execute Ruby tests or a particular scenarios.
" If the cursor is on a line that contains an scenario declaration,
" only that scenario is run.
function! ExecuteTest()
  execute "!cutest " . expand("%")
endfunction
