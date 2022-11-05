# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return nil if start > stop

  result = num_or_string(start)
  ((start + 1)..stop).each { |num| result = "#{result} #{num_or_string(num)}" }
  result
end

def num_or_string(num)
  if (num % 3).zero? && (num % 5).zero?
    'FizzBuzz'
  elsif (num % 5).zero?
    'Buzz'
  elsif (num % 3).zero?
    'Fizz'
  else
    num.to_s
  end
end
# END
