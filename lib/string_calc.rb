class StringCalc
  def add(string)
    sum = 0
    string.split(',').each { |num| sum += num.to_i }
  end
end