#1
puts "Введите Ваше имя: "
name_user = gets.chomp

puts "Введите Ваш возраст:  "
age_user = gets.chomp.to_i

puts "Привет, #{name_user}! Через 5 лет Вам будет #{age_user + 5}."


#2
numbers = [2, 7, 1, 18, 4]

sum_array = numbers.sum()
puts "Сумма массива равна: #{sum_array}"

min_number_array = numbers.min()
puts "Минимальное число массива: #{min_number_array}"

max_number_array = numbers.max()
puts "Максимальное число массива: #{max_number_array}"

new_array_sqware = numbers.map { |num| num ** 2 }
puts "Квадрат чисел нового массива: #{new_array_sqware}"

filtered_array = numbers.select { |num| num > 10 }
puts "Числа в массиве больше 10: #{filtered_array}"
