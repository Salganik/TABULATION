set terminal x11 # установка порта приписки
set output # вывод на экран
plot 'result' using 2:4 with lines,\
'' using 2:3 with lines
pause 5 "the picture 1." # задержка рисунка на 5 секунд
set terminal postscript eps enhanced # смена порта приписки
set output "result.eps" # имя файла с рисунком
replot # перевод рисунка через новый порт
reset
