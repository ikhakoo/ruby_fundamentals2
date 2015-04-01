puts "Let's convert the temperature from Faranheit to Celcius!"
puts "What's the temperature?"
n = gets.chomp
n = n.to_i

def temeperature(n)
	c = ((n - 32) * 5/9)
	puts "The temperature is #{c} degrees celcius"
end

temeperature(n)

