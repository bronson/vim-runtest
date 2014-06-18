" runtest.vim: Runs rspec, presents results in quickfix window.

" start with Gary Bernhard's test running code
"    https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
" and then tweak the heck out of it.


" TODO:
" use Dispatch and populate the quickfix window
" test cucumber .features file
" add support for test::unit and minitest
" add support for perl testing


" TODO: make these more configurable!
nnoremap <leader>t :call RunNearestTest()<cr>
nnoremap <leader>T :call RunTestFile()<cr>
nnoremap <leader>r :call RunTests(g:previous_test)<cr>
" running all tests doesn't change the previous test.
nnoremap <leader>R :call RunTests('.')<cr>


if !exists("g:test_runner")
    let g:test_runner = ":!"
    let g:test_runner = ":Dispatch "
endif

function! TestCommand(filename, lineno)
    if a:lineno != 0
        let fileline = a:filename . ':' . a:lineno
    else
        let fileline = a:filename
    endif

    if match(a:filename, '\.feature$') != -1
        return g:test_runner . "script/features " . fileline
    elseif match(a:filename, '_spec\.rb$') != -1
        if filereadable("script/test")
            return g:test_runner . "script/test " . fileline
        elseif filereadable("Gemfile")
            return g:test_runner . "bundle exec rspec --color " . fileline
        else
            return g:test_runner . "rspec --color " . fileline
        end
    elseif a:filename == '.'
        " need to sense the command to run global tests
        return g:test_runner . "rspec --color " . fileline
    end
    return -1
endfunction

function! RunNearestTest()
    call RunTestFile(line('.'))
endfunction

function! RunTestFile(...)
    let line = 0
    if a:0
        let line = a:1
    end

    let command = TestCommand(expand("%"), line)
    if command != -1
        let g:previous_test = command
    end

    if exists("g:previous_test")
        call RunTests(g:previous_test)
    end
endfunction

function! RunTests(test)
    " TODO: maybe this should be optional?
    :wa

    let test = a:test
    if test == '.'
      let test = TestCommand('.', 0)
    end
    exec test
endfunction



