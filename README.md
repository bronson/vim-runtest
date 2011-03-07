# RSpec Vim Bundle

Runs Ruby specs from within Vim and supports the quickfix window to
navigate any test failures.


## Installation

Same as any other Vim plugin.

 * Best: use <http://github.com/gmarik/vundle> or
   <http://github.com/bronson/vim-update-bundles>
 * Better: use Pathogen and clone this repo into ~/.vim/bundle
 * Good: Just copy these files into your ~/.vim directory.


## Usage

To run all specs, type :Spec (RSpec 1.x) or :RSpec (RSpec 2.x).

If you're unhappy with the results in the quickfix window, it's easy
to tweak the appropriate formater.rb file.


## Alternatives

* vim-rubytest: <https://github.com/janx/vim-rubytest><br/>
    I really tried to like this plugin but never found it reliable.<br/>
    \t runs testcase, \T runs all tests in file, \l reruns last test

* vim-rspec: <https://github.com/taq/vim-rspec><br/>
    Uses hpricot/xslt to postprocess instead of using an rspec formatter.<br/>
    :RunSpec runs current file, :RunSpecs runs all tests

* rspec-tmbundle (for TextMate users): <https://github.com/rspec/rspec-tmbundle>

* what's the best Emacs spec runner?

## Authors

 * Wincent Colaiuta <https://wincent.com>
 * Scott Bronson <http://github.com/bronson>

<https://wincent.com/blog/running-rspec-specs-from-inside-vim>


## TODO

 * make :Test (Test::Unit, MiniTest) work too.
 * To run a single test, put the cursor in the test and hit <leader>t.
 * To run all tests in a file, open the file and hit <leader>T.
 * Very cool idea: <https://github.com/reinh/vim-makegreen>
