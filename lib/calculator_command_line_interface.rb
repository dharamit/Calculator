#Executes command line inputs for the calculator
class CalculatorCommandLineInterface
  def initialize
    @calculator = Calculator.new
  end

  def start
    while (true)
      begin
        interaction
      rescue StandardError => e
        puts "something went wrong try again"
      end
    end
  end

  def interaction
    print "> "
    parser = Parser.new(@calculator)
    input_string = gets.chomp
    command = parser.parse(input_string)
    puts command.execute
  end
end