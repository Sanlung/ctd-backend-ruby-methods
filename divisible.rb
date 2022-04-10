def divisible_by_2_3_5
  result = []
  (1..100).each { |i| result << i if i % 2 == 0 || i % 3 == 0 || i % 5 == 0 }
  result
end

print divisible_by_2_3_5.join(', ')
