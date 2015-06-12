require 'spec_helper'

describe Parser do
  context "parser" do
    it "should return Absoulute object if input is 'abs'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("abs")).to be_instance_of(AbsCommand)
    end
    it "should return Add object if input is 'add 5'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("add 5")).to be_instance_of(AddCommand)
    end
    it "should return Cancel object if input is 'cancel'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("cancel")).to be_instance_of(CancelCommand)
    end
    it "should return Cube object if input is 'cube 5'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("cube")).to be_instance_of(CubeCommand)
    end
    it "should return CubeRoot object if input is 'cubert'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("cubert")).to be_instance_of(CubeRootCommand)
    end
    it "should return Divide object if input is 'divide 5'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("divide 5")).to be_instance_of(DivisionCommand)
    end
    it "should return Exit object if input is 'exit'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("exit")).to be_instance_of(ExitCommand)
    end
    it "should return Multiply object if input is 'multiply 5'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("multiply 5")).to be_instance_of(MultiplyCommand)
    end
    it "should return Negate object if input is 'negate 5'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("negate")).to be_instance_of(NegateCommand)
    end 
    it "should return Repeat object if input is 'repeat 2'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("repeat 2")).to be_instance_of(RepeatCommand)
    end
    it "should return Sqr object if input is 'sqr'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("sqr")).to be_instance_of(SquareCommand)
    end
    it "should return SquareRoot object if input is 'sqrt'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("sqrt")).to be_instance_of(SquareRootCommand)
    end
    it "should return Subtract object if input is 'subtract 5'" do
      parser = Parser.new(Calculator.new)
      expect(parser.parse("subtract 5")).to be_instance_of(SubtractCommand)
    end
  end
end




