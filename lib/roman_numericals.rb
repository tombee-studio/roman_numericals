# frozen_string_literal: true

require_relative "roman_numericals/version"

class Integer
  COUNT = 4
  def to_roman
    dict = [['I', 'V'], ['X', 'L'], ['C', 'D'], ['M', '']]
    int = self
    roman = ''
    COUNT.times do |i|
      div, r = int.divmod(10)
      a, b = dict[i]
      c, d = dict[i + 1]
      case
      when r == 9 then
        roman = "#{a}#{c}#{roman}"
      when r == 4 then
        roman = "#{a}#{b}#{roman}"
      when r >= 5 then
        roman = "#{b}#{a * (r - 5)}#{roman}"
      when r < 4 then
        roman = "#{a * r}#{roman}"
      end
      int = div
    end
    return roman
  end
end

module RomanNumericals
  class Error < StandardError; end

  # Your code goes here...
  module_function
  def main
    if ARGV.size > 0
      puts ARGV[0].to_i.to_roman
    else
      puts "引数が1つ以上必要です"
    end
  end

  main
end
