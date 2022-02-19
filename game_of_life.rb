# frozen_string_literal: true

require_relative 'cell'
require 'matrix'

# Game of life algorithm
class Grid
  def initialize(rows, columns)
    @x = rows
    @y = columns
    @m = Matrix.build(@x, @y) { Cell.new }
  end

  def show_matrix
    @x.times do |x|
      @y.times do |y|
        print @m[x, y].print_body
      end
      puts ''
    end
  end

  def new_generation
    @x.times do |x|
      @y.times do |y|
        @m[x, y].update_state
      end
    end
  end

  def analyze_cells
    @x.times do |x|
      @y.times do |y|
        @m[x, y].neighbours_count(@m, x, y)
      end
    end
  end
end

print 'Ingrese las filas: '
rows = gets.to_i
print 'Ingrese las columnas: '
columns = gets.to_i

grid = Grid.new(rows, columns)
grid.show_matrix
grid.analyze_cells
grid.new_generation
puts 'generation 2'
grid.show_matrix
