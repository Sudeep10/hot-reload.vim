function! hotReload#TriggerHotReload() abort
    if $SHELL =~? 'fish'
        silent execute '!kill -SIGUSR1 (pgrep -f "flutter_tools\.snapshot run")'
    else
        silent execute '!kill -SIGUSR1 $(pgrep -f "flutter_tools\.snapshot run")'
    endif
endfunction
