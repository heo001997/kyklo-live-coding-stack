# frozen_string_literal: true

require_relative '../structures/stack'
require_relative '../custom_exceptions/stack_is_empty'

RSpec.describe Stack do
  let(:stack) { Stack.new }
  let(:rand_element) { Faker::Number.number(digits: 5) }

  shared_examples 'when stack is empty' do |method|
    it "raise StackIsEmpty exception on #{method}" do
      expect{stack.public_send(method)}.to raise_exception(StackIsEmpty)
    end
  end

  describe 'methods' do
    describe 'push' do
      it 'should push an element onto the top' do
        stack.push(rand_element)

        expect(stack.peak).to eq(rand_element)
      end
    end

    describe 'pop' do
      it 'return the top element (and removing it) when the stack has element' do
        stack.push(rand_element)

        expect(stack.pop).to eq(rand_element)
      end

      it_behaves_like 'when stack is empty', :pop
    end

    describe 'peak' do
      it 'return the top element (without removing it) when the stack has element' do
        stack.push(rand_element)

        expect(stack.peak).to eq(rand_element)
        expect(stack.empty?).to be_falsey
      end

      it_behaves_like 'when stack is empty', :peak
    end

    describe 'empty?' do
      it 'return false if the stack has element' do
        stack.push(1)

        expect(stack.empty?).to be_falsey
      end

      it 'return true if the stack is empty' do
        expect(stack.empty?).to be_truthy
      end
    end
  end
end
