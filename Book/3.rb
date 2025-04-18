=begin


Задание №1

Известно, что стоимость дома — 500 тысяч долларов.
Человек берет дом в рассрочку на 30 лет.
Чтобы выплатить сумму за 30 лет, нужно платить 16 666 долларов в год (это легко посчитать, разделив 500 тысяч на 30).

Написать программу, которая для каждого года выводит сумму, которую осталось выплатить.

=end

puts "Привет! Стоимость дома составляет 500 000 долларов"

price_house = 500000

payment_period_year = 30
percent_year = 0.04

price_one_year = 16666

puts "Введи срок от 1 до 30 лет"
enter_period = gets.chomp.to_i

remaining = price_house - (price_one_year * enter_period)
puts "Осталось выплатить: #{remaining.round(2)}"


=begin

Задание №2

Измените программу из предыдущего задания со следующими условиями:
человек берет дом не в рассрочку, а в кредит по ставке 4 % годовых на оставшуюся сумму.

Для каждого года посчитайте, сколько денег нужно заплатить за этот год за использование кредита.

=end

balance = price_house - (price_one_year * enter_period)

puts "Сумма годовых за введенный срок: #{(balance * percent_year).round(2)} "


=begin

Задание №3

Посчитайте количество денег (total), которые мы заплатим только в виде процентов по кредиту за 30 лет.

=end

puts "Выплата процентов за 30 лет составляет: #{(price_house * percent_year * payment_period_year).round(2)}"
