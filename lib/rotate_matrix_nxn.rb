# frozen_string_literal: true

def rotate_matrix_nxn(input)
  n = input.first.size
  result = Array.new(n) { Array.new(n) }
  1.upto(n) do |i|
    1.upto(n) do |j|
      result[j - 1][n - i + 1 - 1] = input[i - 1][j - 1]
    end
  end
  result
end
