class FullAdder
  include Circuit

  def initialize(a, b, carry_in)
    @a = a
    @b = b
    @carry_in = carry_in
  end

  def carry
    Or.new(first_half_adder.carry, second_half_adder.carry).output
  end

  def sum
    second_half_adder.sum
  end

  private

  def first_half_adder
    HalfAdder.new(@a, @b)
  end

  def second_half_adder
    HalfAdder.new(first_half_adder.sum, @carry_in)
  end
end
