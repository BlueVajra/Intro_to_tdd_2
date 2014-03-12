class StringCalc
  def initialize(delim = ",")
    @delimiter = delim
  end
  def add(string)
    sum = 0
    string.split(@delimiter).each { |num| sum += num.to_i }
    sum
  end
end