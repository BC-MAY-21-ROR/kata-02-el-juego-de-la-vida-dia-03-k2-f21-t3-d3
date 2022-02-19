# frozen_string_literal: true

# Class cell
class Cell
  def initialize
    @life = rand(2)
    @body = @life == 1 ? '*' : '.'
    @neighbours = 0
  end

  def print_body
    @body
  end

  def alive
    @life
  end

  def neighbours_count(matrix , row , column)
    last_in_the_row = matrix.row_count - 1
    last_in_the_column = matrix.column_count - 1
    @neighbours += matrix[row - 1, column - 1].alive unless row.zero? || column.zero?
    @neighbours += matrix[row - 1, column].alive unless row.zero?
    @neighbours += matrix[row - 1, column + 1].alive unless row.zero? || column == last_in_the_column
    @neighbours += matrix[row, column - 1].alive unless column.zero?
    @neighbours += matrix[row, column + 1].alive unless column == last_in_the_column
    @neighbours += matrix[row + 1, column - 1].alive unless row == last_in_the_row || column.zero?
    @neighbours += matrix[row + 1, column].alive unless row == last_in_the_row
    @neighbours += matrix[row + 1, column + 1].alive unless row == last_in_the_row || column == last_in_the_column
  end

  def update_state
    if @neighbours < 2 || @neighbours > 3
      @life = 0
      @body = '.'
    elsif @neighbours == 3
      @life = 1
      @body = '*'
    end
  end
end
