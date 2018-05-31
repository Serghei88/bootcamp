module Bootcamp
  class Sudokku
    def self.sudoku_line_valid?(line)
      line.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def self.sudokku_lines_valid?(sudokku_array)
      result = true
      # check lines
      sudokku_array.each do |line|
        result = false unless sudoku_line_valid?(line)
      end
      puts('check lines: ' + result.to_s)
      result
    end

    def self.sudokku_columns_valid?(sudokku_array)
      result = true
      # check columns
      (0..sudokku_array.size - 1).each do |row_number|
        # if rows numbers not equal to column number - this is not sudokku
        return false unless sudokku_array[row_number].size == sudokku_array.size

        temp_column = []
        (0..sudokku_array[row_number].size - 1).each do |column_number|
          temp_column.push(sudokku_array[column_number][row_number])
        end
        result = false unless sudoku_line_valid?(temp_column)
      end
      puts('check columns: ' + result.to_s)
      result
    end

    def self.quadrant_valid?(i, j, list)
      temp_list = []
      (i..i + 2).each do |r|
        (j..j + 2).each do |k|
          temp_list.push(list[r][k])
        end
      end
      puts ' checking quadrant i=' + i.to_s + ' to ' + (i + 3).to_s +
           '  j=' + j.to_s + ' to' + (j + 3).to_s + ' result = ' +
           sudoku_line_valid?(temp_list).to_s

      sudoku_line_valid?(temp_list)
    end

    def check_sudokku(sudokku_array)
      quadrant_size = 3
      return false unless sudokku_array.size % quadrant_size == 0
      result = self.class.sudokku_lines_valid?(sudokku_array) && self.class.sudokku_columns_valid?(sudokku_array)

      i = 0
      while i < sudokku_array.size
        j = 0
        while j < sudokku_array.size
          result &&= self.class.quadrant_valid?(i, j, sudokku_array)
          j += quadrant_size
        end
        i += quadrant_size
      end

      result
  end
  end
end
