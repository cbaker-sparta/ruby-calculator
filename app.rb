puts "Hello! Which calcultor would you like? (B)asic, (A)dvanced, BMI or (T)rip?"
calcultor_type = gets.chomp("").downcase

# Basic Calculator

def basic_calculator
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
  puts "Answer i: #{sum.round(2)}"
end

if calcultor_type == "b"
  basic_calculator
end

# Advanced Calculator

def advanced_calcuator
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
  puts "Answer is: #{sum.round(5)}"
end

if calcultor_type == "a"
  advanced_calculator
end
# BMI Calculator

def bmi_calculator
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
  puts "Your BMI is: #{sum}"
end

if calcultor_type == "bmi"
  bmi_calculator
end
# Trip Calculator

def trip_calculator
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

if calcultor_type == "t"
  trip_calculator
end
