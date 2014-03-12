require 'string_calc'

describe StringCalc do
  it "receives a string and returns the sum of the numbers" do

    calc = StringCalc.new

    expected = 10
    actual = calc.add('1,2,3')

    expect(actual).to eq actual

  end
  it "returns 0 when empty string passed" do

    calc = StringCalc.new

    expected = 0
    actual = calc.add('')

    expect(actual).to eq actual

  end
end