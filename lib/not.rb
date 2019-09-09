class Not
  include Gate

  def initialize(input)
    @input = input
  end

  def output
    Nand.new(@input, @input).output
  end
end
