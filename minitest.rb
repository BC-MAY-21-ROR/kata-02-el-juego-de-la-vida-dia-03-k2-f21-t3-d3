# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'cell.rb'

class UserTest < Minitest::test
  # Aquí van los test
  def print_body
    @body ='.*...*'
    assert_equal '.*...*', @body
  end
end
