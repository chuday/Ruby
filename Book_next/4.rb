
=begin
Запишите следующие примеры при помощи тернарного оператора.

Пример 1:
if friends_are_also_coming?
  go_party
else
  stay_home
end

=end

friends_are_also_coming? ? go_party : stay_home

=begin

Пример 2:
if friends_are_also_coming? && !is_it_raining
  go_party
else
  stay_home
end

=end

friends_are_also_coming? && !is_it_raining ? go_party : stay_home

=begin

Задача:

У тебя есть переменная temperature.

Если температура больше или равна 25, нужно вывести:
"Жарко, можно идти на пляж!"

Иначе вывести:
"Прохладно, лучше взять кофту."

=end

temperature = 25
go_to_beach = "Жарко, можно идти на пляж!"
take_a_sweater = "Прохладно, лучше взять кофту."

if temperature >= 25
  puts "Жарко, можно идти на пляж!"
else
  puts "Прохладно, лучше взять кофту."
end


temperature >= 25 ? go_to_beach : take_a_sweater


=begin

Мини-задачка:

Есть переменная age, которая хранит возраст человека.
Если возраст 18 и больше — напечатать "Доступ разрешён!"
Иначе — напечатать "Доступ запрещён!"

Твоя задача: напиши это через тернарный оператор! 🙌

=end

user_age = gets.chomp.to_i
access_granted = "Доступ разрешён!"
access_denied = "Доступ запрещён!"

puts user_age >= 18 ? access_granted : access_denied
