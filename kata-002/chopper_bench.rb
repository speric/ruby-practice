require 'benchmark'
require_relative 'chopper'

iterations = 1000
large_array = (0...100000).sort

Benchmark.bm do |bm|
  bm.report do
    iterations.times do
      Chopper.chop(99999, large_array)    
    end
  end
end