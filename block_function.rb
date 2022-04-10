def do_calc
  yield 7, 9
end

do_calc { |a, b| puts a + b }
do_calc { |a, b| puts a * b }
