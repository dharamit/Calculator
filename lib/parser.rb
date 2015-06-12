# converts input string to tokens
class Parser
  def initialize(calculator)
    @calculator = calculator
  end

  def parse(user_input)
    user_input_array = user_input.split(" ")
    command = user_input_array.first
    args = user_input_array[1..-1]
    case command
    when "add"
      return AddCommand.new(@calculator, *args)
    when "subtract"
      return SubtractCommand.new(@calculator, *args)
    when "multiply"
      return MultiplyCommand.new(@calculator, *args)
    when "divide"
      return DivisionCommand.new(@calculator, *args)
    when "sqr"
      return SquareCommand.new(@calculator, *args)
    when "abs"
      return AbsCommand.new(@calculator, *args)
    when "cube"
      return CubeCommand.new(@calculator, *args)
    when "negate"
      return NegateCommand.new(@calculator, *args)
    when "sqrt"
      return SquareRootCommand.new(@calculator, *args)
    when "cubert"
      return CubeRootCommand.new(@calculator, *args)
    when "repeat"
      return RepeatCommand.new(@calculator, *args)
    when "cancel"
      return CancelCommand.new(@calculator, *args)
    when "exit"
      return ExitCommand.new(@calculator)
    else
      raise ArgumentError
    end
  end
end
