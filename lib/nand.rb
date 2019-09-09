class Nand
  include Gate

  def initialize(a, b)
    @a = a
    @b = b
  end

  def output
    !@a || !@b
  end
end
