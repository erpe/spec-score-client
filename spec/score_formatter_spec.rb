require 'spec_helper'

describe ScoreFormatter do
  it  'responds to .dump_summary' do
    ScoreFormatter.new(nil).should respond_to(:dump_summary)
  end
end
