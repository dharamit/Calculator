# executes last n commands
class RepeatCommand < BaseCommand

	def initialize(calculator, *args)
		if args.length != 1# || !args[0].integer?
      raise ArgumentError
    end
    @calculator = calculator
    @operand = args[0].to_i
	end

  def execute
    @calculator.repeat(@operand)
  end
end