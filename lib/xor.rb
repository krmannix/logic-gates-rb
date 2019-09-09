class Xor
  include Gate

  def initialize(a, b)
    @a = a
    @b = b
  end

  def output
    not_a = Not.new(@a).output
    not_b = Not.new(@b).output
    nand_1 = Nand.new(not_a, @b).output
    nand_2 = Nand.new(@a, not_b).output
    Nand.new(nand_1, nand_2).output
  end
end
