# RSpec > 2.0 support

require 'rspec/core/formatters/base_text_formatter'

# Format RSpec results for display in the Vim quickfix window
# To test: rspec -r ~/.vim/bundle/ruby-test/rspec_formatter -f RSpec::Core::Formatters::VimFormatter spec
# From https://wincent.com/blog/running-rspec-specs-from-inside-vim
#    (removed the growl notifications since that's nonportable)

class VimFormatter < RSpec::Core::Formatters::BaseTextFormatter
  # TODO: vim-side function for printing progress (if that's even possible)

  def example_failed example
    exception = example.execution_result[:exception]
    path = $1 if exception.backtrace.find do |frame|
      frame =~ %r{\b(spec/.*_spec\.rb:\d+)(?::|\z)}
    end
    message = format_message exception.message
    path    = format_caller path
    output.puts "#{path}: #{example.example_group.description.strip}" +
      "#{example.description.strip}: #{message.strip}" if path
  end

  def example_pending example
    message = format_message example.execution_result[:pending_message]
    path    = format_caller example.location
    output.puts "#{path}: [PEND] #{message}" if path
  end

  def dump_failures *args; end
  def dump_pending *args; end
  def message msg; end
  def dump_summary *args; end

  private

  def format_message msg
    msg.gsub("\n", ' ')[0,40]
  end
end # class VimFormatter
