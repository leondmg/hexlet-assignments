# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN

  def setup
    @stack = Stack.new(%w[ruby php java])
    @empty_stack = Stack.new([])
  end

  def test_to_a
    assert { @stack.to_a == %w[ruby php java] }
    assert { @empty_stack.to_a == [] }
  end

  def test_pop
    @stack.pop!
    assert { @stack.to_a == %w[ruby php] }
    @empty_stack.pop!
    assert { @empty_stack.to_a == [] }
  end

  def test_push
    @stack.push! 'python'
    assert { @stack.to_a == %w[ruby php java python] }
  end

  def test_empty
    assert { !@stack.empty? }
    assert { @empty_stack.empty? }
  end

  def test_clear
    @stack.clear!
    assert { @stack.to_a == [] }
  end

  def test_size
    assert { @stack.size == 3 }
    assert { @empty_stack.size.zero? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
