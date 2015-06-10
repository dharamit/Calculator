# executes cube root operation for calculator-operand
class CubeRootCommand < BaseCommand
  
  def initialize(calculator, *args)
    if args.length != 0
      raise ArgumentError
    end
    @calculator = calculator
  end
  
  def execute
    value = @calculator.cube_root
    @calculator.add_history(self)
    value
  end

end