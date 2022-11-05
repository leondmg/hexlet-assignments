# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  return nil if num.negative?
  return 0 if num.zero?

  prev = 0
  result = 1
  swap = 0
  (num - 1).times do
    swap = prev
    prev = result
    result += swap
  end
  result
end
# END
