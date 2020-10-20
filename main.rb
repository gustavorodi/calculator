require "./calculator/calculator"
require "./Test/executeTest"

class Main
  def InitCalculator (operation, valueX, valueY)
    calculator = Calculator.new
    calculator.calcule(operation, valueX, valueY)
  end
  
  def InitTest()
    test = ExecuteTest.new
    test.startTest()
  end
end

calculadora = Main.new
calculadora.InitTest()
calculadora.InitCalculator(Dividir, "a", 6)
calculadora.InitCalculator(Dividir, 12, 6)
calculadora.InitCalculator(Diminuir, 12, 6)
calculadora.InitCalculator(Multiplicar, 12, 6)
calculadora.InitCalculator(Somar, 12, 6)