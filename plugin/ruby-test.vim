" Run rspec using a formatter meant for quickfix display

let s:home = expand("<sfile>:p:h:h")



function! RunSpec(command)
  if a:command == ''
    let dir = 'spec'
  else
    let dir = a:command
  endif
  cexpr system("spec -r " . s:home . "/spec_formatter.rb -f Spec::Runner::Formatter::VimSpecFormatter " . dir)"a:command)
  cwindow
endfunction

" have :Spec run rspecs (args with pathname completion, :Spec spec/views)
command! -nargs=? -complete=file Spec call RunSpec(<q-args>)



function! RunRSpec(command)
  if a:command == ''
    let dir = 'spec'
  else
    let dir = a:command
  endif
  cexpr system("rspec -r " . s:home . "/rspec_formatter.rb -f RSpec::Core::Formatters::VimFormatter " . dir)"a:command)
  cwindow
endfunction

" have :Spec run rspecs (args with pathname completion, :Spec spec/views)
command! -nargs=? -complete=file RSpec call RunRSpec(<q-args>)

