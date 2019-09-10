class HalfAdder
  include Circuit

  def initialize(a, b)
    @a = a
    @b = b
  end

  def carry
    And.new(@a, @b).output
  end

  def sum
    Xor.new(@a, @b).output
  end
end
