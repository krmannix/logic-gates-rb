class And
  include Gate

  def initialize(a, b)
    @a = a
    @b = b
  end

  def output
    nand_1 = Nand.new(@a, @b).output
    Nand.new(nand_1, nand_1).output
  end
end
