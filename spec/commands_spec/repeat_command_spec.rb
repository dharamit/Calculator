require 'spec_helper'

describe RepeatCommand do
  it "should return 5 when new calculator and -5 is passed'" do
    command_store = CommandStore.new
    calculator = Calculator.new
    add = AddCommand.new(calculator, 5)
    add.execute
    command_store.store(add)
    sub = SubtractCommand.new(calculator, 2)
    sub.execute
    command_store.store(sub)
    repeat_command = RepeatCommand.new(calculator, 2)
    expect(repeat_command.execute).to eq(6)
  end
end