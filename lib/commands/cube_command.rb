# executes cube operation for calculator-operand
class CubeCommand < BaseCommand
  
  def initialize(calculator, *args)
    if args.length != 0
      raise ArgumentError
    end
    @calculator = calculator
  end
  
  def execute
    value = @calculator.cube
    @calculator.add_history(self)
    value
  end

end