# «Progress bar»

print "Formatting hard drive "

100_000.times do
  print '.'
  sleep rand(0.05..0.5)
end

=begin

Задание
С помощью символов /, -, \, | сделайте анимацию — индикатор загрузки.
Если выводить эти символы по очереди на одном и том же месте, возникает ощущение вращающегося символа.

=end

frames = ['/', '-', '\\', '|']


print "Formatting hard drive "

loop do
  frames.each do |frame|
    print "\rFormatting hard drive #{frame}"
    sleep 0.1
  end
end
