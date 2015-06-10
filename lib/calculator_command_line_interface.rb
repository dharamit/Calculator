#Executes command line inputs for the calculator
class CalculatorCommandLineInterface
  def initialize
    @command_store = CommandStore.new
    @calculator = Calculator.new
  end
  def start
    print "> "
    while (input_string = gets.chomp) != "exit"
      begin
        parser = Parser.new(@calculator, @command_store)
        command = parser.parse(input_string)
        puts command.execute
        print "> "
        @command_store.store(command)
      rescue StandardError => e
        puts "something went wrong try again"
      end
    end
  end
end