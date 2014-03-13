require 'dog'

describe Dog do
  it "growls when you poke it" do
    dog = Dog.new

    expected = "grrrrrrrr"
    actual = dog.poke

    expect(actual).to eq expected
  end
end