# executes cancel operation for calculator-operand
class CancelCommand < BaseCommand

  def initialize(calculator, *args)
    if args.length != 0
      raise ArgumentError
    end
    @calculator = calculator
  end
  
  def execute
    value = @calculator.cancel()
    @calculator.add_history(self)
    value
  end
end