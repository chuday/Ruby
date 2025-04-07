
=begin

📌 Первый этап: Простая консольная версия

1. Добавление задачи
2. Отображение списка задач
3. Отметка задачи как выполненной
4. Удаление задачи

=end


# Приветствие и ввод данных
puts "Введите Ваше имя: "
name_user = gets.chomp

# Массив задач
tasks_user_array = []

puts "Привет, #{name_user}! Давай начнем работать с задачами!"

# Метод для добавления новой задачи
def add_task(tasks)
  print "Введите новую задачу: "
  new_task = gets.chomp
  tasks << new_task
  puts "Задача добавлена!"
end

# Метод для показа всех задач
def show_task(tasks)
  if tasks.empty?
    puts "Список задач пуст."
  else
    puts "Ваши задачи:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

# Метод для отметки задачи выполненной
def mark_task_done(tasks)
  if tasks.empty?
    puts "Нет задач для выполнения."
    return
  end

  show_task(tasks)
  print "Введите номер выполненной задачи: "
  index = gets.chomp.to_i - 1

  if index >= 0 && index < tasks.length
    tasks[index] = "✅ #{tasks[index]}"
    puts "Задача отмечена как выполненная!"
  else
    puts "Неверный номер задачи."
  end
end

# Метод для удаления задачи
def delete_task(tasks)
  if tasks.empty?
    puts "Список задач пуст — нечего удалять."
    return
  end

  show_task(tasks)
  print "Введите номер задачи для удаления: "
  index = gets.chomp.to_i - 1

  if index >= 0 && index < tasks.length
    removed = tasks.delete_at(index)
    puts "Задача \"#{removed}\" удалена."
  else
    puts "Неверный номер задачи."
  end
end

# === Основной цикл меню ===

loop do
  puts "\nВыбери действие:
  1 - Добавить задачу
  2 - Показать список задач
  3 - Отметить задачу выполненной
  4 - Удалить задачу
  0 - Выйти"

  print "Ваш выбор: "
  choice = gets.chomp.to_i

  case choice
  when 1
    add_task(tasks_user_array)
  when 2
    show_task(tasks_user_array)
  when 3
    mark_task_done(tasks_user_array)
  when 4
    delete_task(tasks_user_array)
  when 0
    puts "Выход из программы. Пока, #{name_user}!"
    break
  else
    puts "Неверный выбор. Попробуй снова!"
  end
end
