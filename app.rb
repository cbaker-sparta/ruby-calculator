puts "Hello! Which calcultor would you like? (B)asic, (A)dvanced, BMI or (T)rip?"
calcultor_type = gets.chomp("").downcase

# Basic Calculator

if calcultor_type == "b"
  puts "Please enter first number:"
  num1 = gets.chomp("")
  puts "Please enter operator (+, -, *, /):"
  operator = gets.chomp("")
  puts "Please enter second number:"
  num2 = gets.chomp("")
  if operator == "/"
    num1 = num1.to_f
    num1 = num1.to_s
    sum = eval"#{num1} #{operator} #{num2}"
  else
    sum = eval"#{num1} #{operator} #{num2}"
  end
  puts sum.round(2)
end

# Advanced Calculator

if calcultor_type == "a"
  puts "Please enter an operation: (P)ower or (S)quare"
  operator = gets.chomp("").downcase
  puts "Please enter first number:"
  num1 = gets.chomp("").to_i
  if operator == "p"
    puts "Please enter second number:"
    num2 = gets.chomp("").to_i
    sum = (num1**num2).to_f
  end
  if operator == "s"
    sum = Math.sqrt(num1)
  end
  puts sum.round(5)
end

# BMI Calculator

if calcultor_type == "bmi"
  puts "(M)etric or (I)mperial:"
  unit = gets.chomp("")
  if unit == "m"
    puts "Please enter your weight in kilograms:"
    weight = gets.chomp("").to_f
    puts "Please enter your height in metres:"
    height = gets.chomp("").to_f
    height = height * height
    sum = (weight / height).round(4)
  end
  if unit == "i"
    puts "Please enter your weight in pounds:"
    weight = gets.chomp("").to_f
    puts "Please enter your height in inches:"
    height = gets.chomp("").to_i
    height = height * height
    sum = ((weight / height) * 703).round(4)
  end
  puts sum
end

# Trip Calculator

if calcultor_type == "t"
  puts "Please enter your journey distance in Miles:"
  distance = gets.chomp("").to_f
  puts "Please enter your vehicle's fuel efficiency in MPG:"
  fuel_efficiency = gets.chomp("").to_f
  puts "Please end your vehicle's cost per gallon in pounds:"
  cost_per_gallon = gets.chomp("").to_i
  puts "Please end your driving speed in MPH:"
  speed = gets.chomp("").to_i
  trip_time = (distance / speed).round(1)
  cost = ""
  if speed <= 60
    cost = (distance / fuel_efficiency) * cost_per_gallon
  else
    fuel_efficiency = fuel_efficiency - 2*(speed-60)
    if fuel_efficiency >= 0
      cost = (distance / fuel_efficiency) * cost_per_gallon
    end
  end
  puts "Your trip with take #{trip_time} hours and cost £#{cost.round(2)}"
end
