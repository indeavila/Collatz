def collatz(n)
  nums = []
  nums.push(n)
  until n == 1
    if n % 2 == 0
      n = (n / 2)
      nums.push(n)
    elsif n % 2 != 0
      n = (3 * n + 1)
      nums.push(n)
    elsif n == 1
      nums.push(1)
    end
  end
  return nums
end
def collatz_length(n)
  long = []
  (1..n).each do |x|
    nums = [x]
    until nums.last == 1
      if nums.last % 2 == 0
        nums.push(nums.last/2)
      elsif nums.last % 2 != 0
        nums.push(3 * nums.last + 1)
      end
    end
    if nums.length > long.length
      long = nums
    end
  end
  puts long[0]
end
(1..10).each do |n|
  puts "collatz#{n} = #{collatz(n)}"
end
# Please allow the bottom line of code to run to find the solution.
puts collatz_length(1000000)