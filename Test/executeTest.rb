require_relative '../ops/dividir'
require_relative '../ops/diminuir'
require_relative '../ops/soma'
require_relative '../ops/multiplicar'

class ExecuteTest
    def startTest ()
      puts "Teste da validação (As variáveis são numeros?): " + self.testValid().to_s
      puts "Teste soma passou ? " + self.testSoma().to_s
      puts "Teste Divisão passou ? " + self.testDivisao().to_s
      puts "Teste Diminuir passou ? " + self.testDiminuir().to_s
      puts "Teste Multiplicar passou ? " + self.testMultiplicar().to_s
    end

    def testSoma()
      obj = Somar.new
      return obj.calculate(1,1) == 2 ? true : false
    end

    def testDivisao()
      obj = Dividir.new
      return obj.calculate(12,6) == 2 ? true : false 
    end

    def testDiminuir()
      obj = Diminuir.new
      return obj.calculate(9,6) == 3 ? true : false 
    end

    def testMultiplicar()
      obj = Multiplicar.new
      return obj.calculate(9,9) == 81 ? true : false 
    end

    def testValid()
      obj = ValidNumber.new
      return obj.valid("a",9).is_a? String   
    end

    
end

