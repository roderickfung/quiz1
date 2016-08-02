# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

require "Benchmark"

Benchmark.bm do |bm|
  def loop_even(n)
    c = 0
    i = 1
    while (c < n)
      i.even? ? ( i; c+=1; i+=1) : i+=1
    end
  end

  def recursive_even(n)
    @arr = []
    @i = 1
    def self.recursor(n)
      n == 0 ? @arr : @i.even? ? (@arr << @i; @i+=1; recursor(n-1)) : (@i+=1; recursor(n))
    end
    recursor(n)
  end
  bm.report{100_000.times{|x|loop_even(10)}}
  bm.report{100_000.times{|x|recursive_even(10)}}
end

#Answer : The while loop was significantly faster
#while loop: 0.090030
#recursive: 0.236908
