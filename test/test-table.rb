require 'test/unit'
require 'numo/narray'
require 'rubydown'

class TableTest < Test::Unit::TestCase
  def setup
    @table = Numo::DFloat.new(3, 5).seq.to_html
  end

  def test_to_html
    assert_equal(
        "<table><tr><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td></tr><tr><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td></tr><tr><td>10.0</td><td>11.0</td><td>12.0</td><td>13.0</td><td>14.0</td></tr></table>",
        @table
    )
  end
end