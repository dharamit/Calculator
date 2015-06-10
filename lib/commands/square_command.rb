# executes square operation for calculator-operand
class SquareCommand < BaseCommand
  
  def initialize(calculator, *args)
    if args.length != 0
      raise ArgumentError
    end
    @calculator = calculator
  end
  
  def execute
    value = @calculator.square
    @calculator.add_history(self)
    value
  end

end