# frozen_string_literal: true

require "test_helper"

class RomanNumericalsTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::RomanNumericals.const_defined?(:VERSION)
    end
  end

  test "Integer has method: to_roman" do
    assert 3.to_roman
  end

  test "Integers: 1 -- 9 is able to transfer I -- IX" do
    [[1, 'I'], [2, 'II'], [3, 'III'], [4, 'IV'], [5, 'V'], [6, 'VI'], [7, 'VII'], [8, 'VIII'], [9, 'IX']].each do |i, roman|
      assert_equal roman, i.to_roman
    end
  end

  test "Integers: 10 -- 99 is able to tarnsfer X -- XCIX" do
    [[10, 'X'], [11, 'XI'], [14, 'XIV'], [15, 'XV'], [19, 'XIX'], [38, 'XXXVIII'], 
     [42, 'XLII'], [49, 'XLIX'], [51, 'LI'], [97, 'XCVII'], [99, 'XCIX']].each do |i, roman|
      assert_equal roman, i.to_roman
    end
  end

  test "Integers: 100 -- 1000 is able to transfer C -- M" do
    [[439, 'CDXXXIX'], [483, 'CDLXXXIII'], [499, 'CDXCIX'], [732, 'DCCXXXII'], [961, 'CMLXI'], [999, 'CMXCIX']].each do |i, roman|
      assert_equal roman, i.to_roman
    end
  end
end
