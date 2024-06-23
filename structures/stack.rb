# frozen_string_literal: true

class Stack
  attr_reader :elements

  def initialize
    @elements = []
  end

  def push(element)
    elements.push(element)
  end

  def pop
    raise StackIsEmpty if empty?
    elements.pop
  end

  def peak
    raise StackIsEmpty if empty?
    elements.last
  end

  def empty?
    elements.empty?
  end
end
