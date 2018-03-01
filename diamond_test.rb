require 'minitest/autorun'
require_relative 'diamond'

class DiamondTest < Minitest::Test
  def test_letter_a
    answer = Diamond.new('A')
    diamond = answer.diamond
    assert_equal(1, diamond.length)
    assert_equal "A", diamond[0]
  end

  def test_letter_b
    answer = Diamond.new('B')
    diamond = answer.diamond
    assert_equal(' B', answer.d_right(1))
  end

  def test_counts
    answer = Diamond.new('D')
    assert_equal(3, answer.int)
  end

  def test_full_line
    answer = Diamond.new('C')
    b_line = answer.full_line(1)
    assert_equal(' B B ', b_line)
  end

  def test_letter_d
    answer = Diamond.new('D')
    diamond = answer.diamond
    assert_equal(7, diamond.length)
    assert_equal('   A   ', diamond[0])
    assert_equal('  B B  ', diamond[1])
    assert_equal(' C   C ', diamond[2])
    assert_equal('D     D', diamond[3])
    assert_equal(' C   C ', diamond[4])
    assert_equal('  B B  ', diamond[5])
    assert_equal('   A   ', diamond[6])
  end

  def test_letter_e
    answer = Diamond.new('E')
    diamond = answer.diamond
    assert_equal(9, diamond.length)
    assert_equal('    A    ', diamond[0])
    assert_equal('   B B   ', diamond[1])
    assert_equal('  C   C  ', diamond[2])
    assert_equal(' D     D ', diamond[3])
    assert_equal('E       E', diamond[4])
    assert_equal(' D     D ', diamond[5])
    assert_equal('  C   C  ', diamond[6])
    assert_equal('   B B   ', diamond[7])
    assert_equal('    A    ', diamond[8])
  end

end
