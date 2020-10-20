class ValidNumber
  def valid (numberX, numberY)
      validX = numberX.is_a? Numeric
      validY = numberY.is_a? Numeric
      
      return validY == validX 
  end
end