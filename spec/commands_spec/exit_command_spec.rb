require 'spec_helper'

describe ExitCommand do
  it "should raise SystemExit error for exit command" do
    calculator = Calculator.new
    exit_command = ExitCommand.new(calculator)
    expect { exit_command.execute }.to raise_error(SystemExit)
  end
end