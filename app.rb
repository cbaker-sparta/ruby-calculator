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
    num1float = num1.to_f
    num1string = num1float.to_s
    sum = eval"#{num1string} #{operator} #{num2}"
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
    puts "Please enter your weight in kg:"
    weight = gets.chomp("").to_f
    puts "Please enter your height in m:"
    height = gets.chomp("").to_f
    height_square = height * height
    sum = (weight / height_square)
  end
  if unit == "i"
    puts "Please enter your weight in lbs:"
    weight = gets.chomp("").to_f
    puts "Please enter your height in inches:"
    height = gets.chomp("").to_i
    height_square = height * height
    sum = ((weight / height_square) * 703)
  end
  puts sum
end

# Trip Calculator

if calcultor_type == "bmi"
  puts "(M)etric or (I)mperial:"
  unit = gets.chomp("")
  if unit == "m"
    puts "Please enter your weight in kg:"
    weight = gets.chomp("").to_f
    puts "Please enter your height in m:"
    height = gets.chomp("").to_f
    height_square = height * height
    sum = (weight / height_square)
  end
  if unit == "i"
    puts "Please enter your weight in lbs:"
    weight = gets.chomp("").to_f
    puts "Please enter your height in inches:"
    height = gets.chomp("").to_i
    height_square = height * height
    sum = ((weight / height_square) * 703)
  end
  puts sum
end
