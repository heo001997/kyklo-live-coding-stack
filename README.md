# KYKLO - Implement Stack

I've follow the TDD principle to implement this Stack

# [100% Test Coverage Report](https://heo001997.github.io/kyklo-live-coding-stack/coverage/index.html)

RSpec tests

```ruby
 ~/Personal/40-KYKLO/stack │ main +41 !1  rspec spec/stack_spec.rb --format d 

Stack
  methods
    push
      should push an element onto the top
    pop
      return the top element (and removing it) when the stack has element
      behaves like when stack is empty
        raise StackIsEmpty exception on pop
    peak
      return the top element (without removing it) when the stack has element
      behaves like when stack is empty
        raise StackIsEmpty exception on peak
    empty?
      return false if the stack has element
      return true if the stack is empty

Finished in 0.00361 seconds (files took 0.19883 seconds to load)
7 examples, 0 failures
```
