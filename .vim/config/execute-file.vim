" Execute actions on the current file based on the file name (F5)
function! ExecuteFile()
  let file = expand("%")

  if stridx(file, "/tmp/sample.rb") != -1
    call ExecuteTest()
  elseif stridx(file, "_test.rb") != -1
    call ExecuteTest()
  elseif stridx(file, ".rb") != -1
    call ExecuteTest()
  elseif stridx(file, ".lua") != -1
    execute "!lua %"
  elseif stridx(file, ".haml") != -1
    execute "!haml % " . substitute(file, "\.haml$", ".html", "")
  elseif stridx(file, ".dot") != -1
    let dotfile = substitute(file, "\.dot$", ".pdf", "")
    execute "!dot -Tpdf % > " . dotfile . " && open " . dotfile
  elseif stridx(file, ".markdown") != -1
    execute "!maruku %"
  elseif stridx(file, ".md") != -1
    execute "!maruku %"
  elseif stridx(file, ".sass") != -1
    execute "!sass % " . substitute(file, "\.sass$", ".css", "")
  elseif stridx(file, ".html") != -1
    execute "!open %"
  elseif stridx(file, ".scm") != -1
    execute "!chibi-scheme %"
  elseif stridx(file, ".pure") != -1
    execute "!pure -i %"
  endif
endfunction

map <F5> :call ExecuteFile()<CR>
imap <F5> <ESC>:w!<CR>:call ExecuteFile()<CR>
