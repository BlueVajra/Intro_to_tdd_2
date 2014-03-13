require 'dog'

describe Dog do
  it "growls when you poke it" do
    dog = Dog.new

    expected = "grrrrrrrr"
    actual = dog.poke

    expect(actual).to eq expected
  end
  it "barks after getting poked three times" do
    dog = Dog.new
    2.times {dog.poke}
    expected = "Woof! Woof! Woof!"
    actual = dog.poke

    expect(actual).to eq expected
  end
end