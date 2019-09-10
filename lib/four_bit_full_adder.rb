class FourBitFullAdder
  include Circuit

  def initialize(as, bs, carry_in)
    @as = as
    @bs = bs
    @carry_in = carry_in
  end

  def carry
    full_adder_4.carry
  end

  def sum
    [full_adder_4.sum, full_adder_3.sum, full_adder_2.sum, full_adder_1.sum]
  end

  private

  def full_adder_1
    FullAdder.new(@as[3], @bs[3], @carry_in)
  end

  def full_adder_2
    FullAdder.new(@as[2], @bs[2], full_adder_1.carry)
  end

  def full_adder_3
    FullAdder.new(@as[1], @bs[1], full_adder_2.carry)
  end

  def full_adder_4
    FullAdder.new(@as[0], @bs[0], full_adder_3.carry)
  end
end
