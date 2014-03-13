class Dog
  def initialize
    @times_poked = 0
  end
  def poke
    @times_poked += 1
    @times_poked ==3 ? "Woof! Woof! Woof!" : "grrrrrrrr"
  end
end