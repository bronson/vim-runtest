# RSpec Vim Bundle

Runs Ruby specs from within Vim and supports the quickfix window to
navigate to test failures.


## Installation

Same as any other Vim plugin.

 * Best: use <http://github.com/gmarik/vundle> or
   <http://github.com/bronson/vim-update-bundles>
 * Better: use Pathogen and clone this repo into ~/.vim/bundle
 * Good: Just copy these files into your ~/.vim directory.


## Usage

To run all RSpec 1.x specs:

    :Spec
    :Spec spec/views
    :Spec spec/views/a*

To run all RSpec 2.x specs:

    :RSpec
    :RSpec spec/views
    :RSpec spec/views/a*

To run all MiniTest tests (can't accept dirs):

    :MiniTest
    :MiniTest test/views/\*


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

 * make Test::Unit work too.
 * To run a single test, put the cursor in the test and hit <leader>t.
 * To run all tests in a file, open the file and hit <leader>T.
 * Very cool idea: <https://github.com/reinh/vim-makegreen>
 * Add a Test command that will run all tests (just use autotest!)

