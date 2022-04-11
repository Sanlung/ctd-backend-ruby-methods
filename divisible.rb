def divisible_by_2_3_5
  (1..100).filter { |i| i % 2 == 0 || i % 3 == 0 || i % 5 == 0 }
end

print divisible_by_2_3_5.join(', ')
