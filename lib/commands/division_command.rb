# executes division operation for calculator-operand
class DivisionCommand < BaseCommand
  
  def initialize(calculator, *args)
    if args.length != 1 || !is_number(args[0])
      raise ArgumentError
    end
    @calculator = calculator
    @operand = args[0].to_f
  end

  def execute
    value = @calculator.divide(@operand)
    @calculator.add_history(self)
    value
  end
end