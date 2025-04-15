=begin

Написать программу, которая подряд спрашивает:
год рождения,
место рождения,
номер телефона трех клиентов

После чего выводит полученную информацию полностью.

=end

puts "Привет ребята! Введите свои имена!"


# Имена

name_first = gets.chomp
name_second = gets.chomp
name_third = gets.chomp

puts "Отлично!"


# Год рождения
puts "Теперь введите год рождения"

puts "Ты первый #{name_first}"
year_of_birth_first = gets.chomp

puts "Теперь ты #{name_second}"
year_of_birth_second = gets.chomp

puts "Ну и теперь ты #{name_third}"
year_of_birth_third = gets.chomp


# Место рождения
puts "Теперь введите место рождения"

puts "Ты первый #{name_first}"
place_of_birth_first = gets.chomp

puts "Теперь ты #{name_second}"
place_of_birth_second = gets.chomp

puts "Ну и теперь ты #{name_third}"
place_of_birth_third = gets.chomp


# Телефон
puts "Теперь введите свой телефон"

puts "Ты первый #{name_first}"
number_phone_first = gets.chomp

puts "Теперь ты #{name_second}"
number_phone_second = gets.chomp

puts "Ну и теперь ты #{name_third}"
number_phone_third = gets.chomp

puts "Ну вот как это выглядит теперь"

# Вывод всей информации
output_first = "Первый: #{name_first}, год рождения: #{year_of_birth_first}, место рождения: #{place_of_birth_first}, номер телефона: #{number_phone_first}."
puts output_first

output_second = "Второй #{name_second}, год рождения: #{year_of_birth_second}, место рождения: #{place_of_birth_second}, номер телефона: #{number_phone_second}."
puts output_second

output_third = "Третий #{name_first}, год рождения:#{year_of_birth_third}, место рождения: #{place_of_birth_third}, номер телефона: #{number_phone_third}."
puts output_third
