# executes negate operation for calculator-operand
class NegateCommand < BaseCommand
  
  def initialize(calculator, *args)
    if args.length != 0
      raise ArgumentError
    end
    @calculator = calculator
  end
  
  def execute
    value = @calculator.negate
    @calculator.add_history(self)
    value
  end

end