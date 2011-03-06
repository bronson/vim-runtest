" Run rspec using a formatter meant for quickfix display
" Uses ~/.vim/ruby/vim_spec_formatter.rb to populate the quickfix window
" Slightly modified from https://wincent.com/blog/running-rspec-specs-from-inside-vim
function! RunSpec(command)
  if a:command == ''
    let dir = 'spec'
  else
    let dir = a:command
  endif
  cexpr system("spec -r ~/.vim/bundle/ruby-test/spec_formatter.rb -f Spec::Runner::Formatter::VimSpecFormatter " . dir)"a:command)
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
  cexpr system("rspec -r ~/.vim/bundle/ruby-test/rspec_formatter.rb -f RSpec::Core::Formatters::VimFormatter " . dir)"a:command)
  cwindow
endfunction

" have :Spec run rspecs (args with pathname completion, :Spec spec/views)
command! -nargs=? -complete=file RSpec call RunRSpec(<q-args>)

