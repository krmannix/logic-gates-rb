class Or
  include Gate

  def initialize(a, b)
    @a = a
    @b = b
  end

  def output
    nand_1 = Nand.new(@a, @a)
    nand_2 = Nand.new(@b, @b)
    Nand.new(nand_1.output, nand_2.output).output
  end
end
