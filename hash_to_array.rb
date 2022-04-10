hash = {}
key = nil
5.times do
  print 'Give me a key: '
  key = gets.chomp
  print 'Give me the value: '
  hash[key] = gets.chomp
end

# I don't understand what's meant by the statement in
# the instructions to "Write a function that accepts
# the hash as 'optional' parameters." Is this what the
# instructor want?
def print_hash(hash = nil)
  puts "#{hash.keys}\n#{hash.values}" unless hash.nil?
end

print_hash(hash)
