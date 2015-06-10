# executes last n commands
class RepeatCommand < BaseCommand

	def initialize(calculator, command_store, *args)
		if args.length != 1# || !args[0].integer?
      raise ArgumentError
    end
    @calculator = calculator
    @operand = args[0].to_i
    @command_store = command_store
	end

  def execute
    @calculator.repeat(@command_store.get_last(@operand))
  end
end