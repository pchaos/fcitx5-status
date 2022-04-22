let g:input_toggle = 0
" fcitx exists ???
if executable('fcitx5-remote')
  " for fcitx5
  let g:fcitxcmd = 5
elseif  executable('fcitx-remote')
  let g:fcitxcmd = 4
else
  let g:fcitxcmd = 0
endif

if g:fcitxcmd
  if g:fcitxcmd == 5
    " for fcitx5
    function! Fcitx2en()
     let s:input_status = system("fcitx5-remote")
     if s:input_status == 2
        let g:input_toggle = 1
        let l:a = system("fcitx5-remote -c")
     endif
    endfunction

    function! Fcitx2zh()
       let s:input_status = system("fcitx5-remote")
       if s:input_status != 2 && g:input_toggle == 1
          let l:a = system("fcitx5-remote -o")
          let g:input_toggle = 0
       endif
    endfunction
  else
    " for < fcitx5
    function! Fcitx2en()
       let s:input_status = system("fcitx-remote")
       if s:input_status == 2
          let g:input_toggle = 1
          let l:a = system("fcitx-remote -c")
       endif
    endfunction

    function! Fcitx2zh()
       let s:input_status = system("fcitx-remote")
       if s:input_status != 2 && g:input_toggle == 1
          let l:a = system("fcitx-remote -o")
          let g:input_toggle = 0
       endif
    endfunction
  endif

  set timeoutlen=150
  autocmd InsertLeave * call Fcitx2en()
  autocmd InsertEnter * call Fcitx2zh()
else
  unlet g:fcitxcmd
  unlet g:input_toggle
endif
