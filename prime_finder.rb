
def sieve_of_eratosthenes (n)
  numbers = [*2..n]
  i = 0
  while (numbers[i] ** 2 <= n) do
    multiple =  numbers[i]
    while (multiple <= n) do
      multiple += numbers[i]
      numbers.delete(multiple)
    end
    i += 1
  end
  puts "The primes are  primes. They are:"
  numbers.each {|i| print  "#{i} "}
  puts "There are #{numbers.size} primes before #{n}"
end
puts "Welcome to Prime Finder"
puts "What number do you want to find all the primes up to?"
n = gets.chomp.to_i

sieve_of_eratosthenes(n)
