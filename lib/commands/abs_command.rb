# executes absolute operation for calculator-operand
class AbsCommand < BaseCommand
  
  def initialize(calculator, *args)
    if args.length != 0
      raise ArgumentError
    end
    @calculator = calculator
  end

  def execute
    value = @calculator.abs
    @calculator.add_history(self)
    value
  end

end