class Diamond
  attr_reader :int
  def initialize(letter)
    @int = letter.bytes[0] - 'A'.bytes[0]
  end

  def d_right(x)
    spaces = self.line(x)
    spaces[x] = (x+65).chr
    return spaces
  end

  def line(x)
    line = ''
    0.upto(@int) { |space| line += ' '}
    return line
  end

  def full_line(y)
    base = d_right(y)
    slice = base[1, base.length]
    return slice.reverse + base
  end

  def diamond
    base = (0..@int).collect { |i| self.full_line(i)}
    slice = base[0,base.length-1]
    return base + slice.reverse
  end
    
end