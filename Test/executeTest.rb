require_relative '../ops/dividir'
require_relative '../ops/diminuir'
require_relative '../ops/soma'
require_relative '../ops/multiplicar'

class ExecuteTest
    def start_test()
      puts "Teste da validação (As variáveis são numeros?): " + self.test_valid().to_s
      puts "Teste soma passou ? " + self.test_soma().to_s
      puts "Teste Divisão passou ? " + self.test_divisao().to_s
      puts "Teste Diminuir passou ? " + self.test_diminuir().to_s
      puts "Teste Multiplicar passou ? " + self.test_multiplicar().to_s
    end

    def test_soma()
      obj = Somar.new
      return obj.calculate(1,1) == 2 ? true : false
    end

    def test_divisao()
      obj = Dividir.new
      return obj.calculate(12,6) == 2 ? true : false 
    end

    def test_diminuir()
      obj = Diminuir.new
      return obj.calculate(9,6) == 3 ? true : false 
    end

    def test_multiplicar()
      obj = Multiplicar.new
      return obj.calculate(9,9) == 81 ? true : false 
    end

    def test_valid()
      obj = ValidNumber.new
      return obj.valid("a",9).is_a? String   
    end

    
end

