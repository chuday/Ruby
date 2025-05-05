
def get_number(what)
 print "Введите #{what}: "
 gets.to_i
end

age = get_number('возраст')
salary = get_number('зарплату')
rockets = get_number('количество ракет для запуска')

puts "Вот данные: "

puts "Возраст: #{age}"
puts "Запрплата: #{salary}"
puts "Количество ракет: #{rockets}"

=begin

Задание
Напишите метод, который выводит на экран пароль, но в виде звездочек.
Например, если пароль secret, метод должен вывести «Ваш пароль: ******».

=end

# №1
puts "Привет! Введи пароль: "
text = gets.chomp
masked_password = "*" * text.length
puts "Ваш пароль: #{masked_password}"

# №2
puts "Привет! Введи пароль: "
text = gets.chomp
masked_password = text.gsub(/./, "*")
puts "Ваш пароль: #{masked_password}"
