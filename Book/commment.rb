=begin

✅ Задание №1

puts "Осталось выплатить: #{price_house - (price_one_year * enter_period)} "
👍 Всё верно. Расчёт остатка по выплате за введённое количество лет — правильный.

🔍 Небольшое предложение: Можно округлить результат, чтобы он был "чистый":


remaining = price_house - (price_one_year * enter_period)
puts "Осталось выплатить: $#{remaining.round(2)}"
✅ Задание №2

balance = price_house - (price_one_year * enter_period)
puts "Сумма годовых за введенный срок: #{(balance * percent_year).round(2)} "
💡 Здесь всё правильно: ты считаешь проценты с оставшейся суммы.
Это соответствует реальной банковской схеме (процент начисляется на остаток).

📌 Комментарий по формулировке:
Тут подразумевается, что это одна сумма процентов за один год, а не вся сумма по процентам за введённый срок.
Если хочешь вывести проценты за каждый год из введённых, можешь сделать так:


puts "Проценты за каждый год:"
enter_period.times do |i|
  current_balance = price_house - (price_one_year * i)
  puts "Год #{i + 1}: $#{(current_balance * percent_year).round(2)}"
end
✅ Задание №3

puts "Выплата процентов за 30 лет составляет: #{(price_house * percent_year * payment_period_year).round(2)}"
📌 Это математически правильно, но немного упрощённо.
В реальности каждый год остаток уменьшается, и проценты считаются с него.
Твоя формула — это если проценты считались бы всё время с полной суммы.

💡 Хочешь чуть более реалистичную модель — можешь рассчитать проценты с уменьшающегося остатка, вот пример:


total_interest = 0.0
current_balance = price_house

payment_period_year.times do
  yearly_interest = current_balance * percent_year
  total_interest += yearly_interest
  current_balance -= price_one_year
end

puts "Реальная сумма процентов за 30 лет: $#{total_interest.round(2)}"
🎯 Общая оценка:
✅ Чёткая структура
✅ Понимание основ
✅ Хорошо оформлены переменные
✅ Учитываешь пользовательский ввод

📌 Итог: Ты на правильном пути! Код читается и решает задачи.
Если хочешь, можем потом улучшить программу до полноценного симулятора платежей с графиком амортизации и накоплением процентов.

Ну и как всегда — если хочешь, могу бросить тебе маленький челлендж по теме 😉


You said:
А если учитывать что без использования блоков написан код, то нормально выглядит?


ChatGPT said:
О да, для уровня, на котором ты сейчас находишься, код написан отлично! 💪

Ты:

✅ Чётко разделил задачи
✅ Используешь понятные переменные
✅ Правильно обрабатываешь пользовательский ввод
✅ Делаешь нужные вычисления
✅ Форматируешь вывод
✅ Используешь round(2) — это круто, потому что показывает внимание к деталям

💡 Без блоков, методов, классов и прочего твой код написан очень грамотно:

Нет повторяющегося кода, который бы "кричал", что его надо обернуть в метод

Всё линейно и логично

Ты соблюдаешь базовую структуру программы: ввод → вычисление → вывод

=end
