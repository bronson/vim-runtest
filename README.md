# RunTest Vim Plugin

Run unit tests from within Vim and navigate to test failures using the quickfix window.  Supports:

* Ruby: [RSpec 2](http://relishapp.com/rspec),
    [RSpec 1](http://rspec.info/),
    [MiniTest](https://github.com/seattlerb/minitest), and
    [Test::Unit](http://stdlib.rubyonrails.org/libdoc/test/unit/rdoc/classes/Test/Unit.html)


## Installation

Same as any other Vim plugin.

 * Best: use [Vundle](http://github.com/gmarik/vundle) or
   [vim-update-bundles](http://github.com/bronson/vim-update-bundles).
 * Better: use [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332) and clone this repo into ~/.vim/bundle.
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

To run all Test::Unit tests (can't accept dirs):

    :TestUnit
    :TestUnit test/views/\*


## Alternatives

* vim-rubytest: <https://github.com/janx/vim-rubytest><br/>
    I really tried to like this plugin but never found it reliable.<br/>
    \t runs testcase, \T runs all tests in file, \l reruns last test

* vim-rspec: <https://github.com/taq/vim-rspec><br/>
    Uses hpricot/xslt to postprocess instead of using an rspec formatter.<br/>
    :RunSpec runs current file, :RunSpecs runs all tests

* VimTestRunner: <https://github.com/dahu/VimTestRunner><br/>
    Works for Django (Python) and Ruby, nice features
    <leader>y to run current file, <leader>a to run all tests, shows test results as a green or red bar.

* rspec-tmbundle (for TextMate users): <https://github.com/rspec/rspec-tmbundle>

* what's the best Emacs spec runner?


## Authors

 * Wincent Colaiuta <https://wincent.com>
 * Scott Bronson <http://github.com/bronson>

<https://wincent.com/blog/running-rspec-specs-from-inside-vim>


## TODO

 * To run a single test, put the cursor in the test and hit <leader>t.
 * To run all tests in a file, open the file and hit <leader>T.
 * Add support for Perl and Python testing too
 * Very cool idea: <https://github.com/reinh/vim-makegreen>
 * Add a Test command that will run all tests (just use autotest!)

