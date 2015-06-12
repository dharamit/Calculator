require 'spec_helper'

describe CalculatorCommandLineInterface do
  it "sholud print 5 if use input is 'add 5'" do
    calculator_command_line_interface = CalculatorCommandLineInterface.new
    allow(calculator_command_line_interface).to receive(:gets).and_return("add 5")
    expect { calculator_command_line_interface.interaction }.to output(/5.0/).to_stdout
  end
end