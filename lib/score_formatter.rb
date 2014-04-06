require 'rspec/core/formatters/base_text_formatter'

class ScoreFormatter < RSpec::Core::Formatters::BaseFormatter
  def dump_summary(duration, example_count, failure_count, pending_count)
    puts "\e[H\e[2J"
    puts `figlet "highscore?"` 
    print "We spent #{red_colored( bold( duration))} seconds
    running #{red_colored( bold( example_count))} specs.
    While this time #{red_colored( bold( failure_count))} errors occured
    and #{red_colored( bold( pending_count))} specs still need to be implemented - 
    #{red_bg(bold('why not push the results to an API and promote the use of TDD?'))}"
  end


  private

  def red_colored(string)
    "\033[31m#{string}\033[0m"
  end

  def red_bg(string)
    "\033[41m#{string}\033[0m"
  end

  def bold(string)
    "\033[1m#{string}\033[22m"
  end
  
end
