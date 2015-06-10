#Executes command line inputs for the calculator
class CalculatorCommandLineInterface
  def initialize
    @calculator = Calculator.new
  end
  def start
    print "> "
    while (true)
      begin
        input_string = gets.chomp
        parser = Parser.new(@calculator)
        command = parser.parse(input_string)
        puts command.execute
        print "> "
      rescue StandardError => e
        puts "something went wrong try again"
      end
    end
  end
end