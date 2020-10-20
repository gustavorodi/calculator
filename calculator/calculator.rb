require_relative '../ops/dividir'
require_relative '../ops/diminuir'
require_relative '../ops/soma'
require_relative '../ops/multiplicar'
require_relative '../validation/validNumber'

class Calculator
    def calcule(nameFunction, valueX, valueY)
        validNumber = ValidNumber.new
        if validNumber.valid(valueX, valueY)
          objClass = nameFunction.new
          puts objClass.calculate(valueX, valueY)
        else
          puts "Valores incorretos"
        end
    end
end
