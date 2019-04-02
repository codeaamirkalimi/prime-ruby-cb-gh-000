# Add  code here!
require 'benchmark'
def prime?(num)
  if num < 0 || num == 1 || num ==0
    false
  else
    (2..num-1).to_a.none? do |factor|
      num % factor == 0
    end
  end
end
puts Benchmark.measure { prime?(16464000) }
