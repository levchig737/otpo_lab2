## Модуль load
## Метод load
### Тест suite1
- Цель: Проверить корректность загрузки файла
- Тип: позитивный
- Входные данные: input.txt 
- Ожидаемый результат: Соответствие каждой строки загуженного файла строке файла

### Тест suite2
- Цель: Проверить вывод при отсутствии файла
- Тип: негативный
- Входные данные: no_text.txt 
- Ожидаемый результат: Вывод "The file no_file.txt cannot be opened\n"

## Модуль save
## Метод save
### Тест suite1
- Цель: проверить содержимого файла после работы функции
- Тип: позитивный
- Входные данные: text txt, "result.txt"
- Ожидаемый результат: содержание фалйа совпадает с результатом.

## Модуль show
## Метод show
### Тест suite1
- Цель: Проверить поведение при отсутсвие текста
- Тип: позитивный
- Входные данные: text txt 
- Ожидаемый результат: Вывод программы "There are already no any lines in the text!\n"

## Модуль move_cursor
## Метод move_cursor  
### Тест suite1
- Цель: проверить корректность работы функции при перемещении курсора в пределах текста
- Тип: позитивный
- Входные данные: text txt, 2, 3
- Ожидаемый результат: txt->cursor->position = 3, номер строки в которой находится курсор равен 2

### Тест suite2
- Цель: проверить корректность работы функции при перемещении курсора за пределы текста в отрицательном направлении строк.
- Тип: негативный
- Входные данные: text txt, -3, 0
- Ожидаемый результат: txt->cursor->position = 0, номер строки в которой находится курсор равен 1

### Тест suite3
- Цель: проверить корректность работы функции при перемещении курсора за пределы текста в положительном направлении строк.
- Тип: негативный
- Входные данные: text txt, 15, 0
- Ожидаемый результат: txt->cursor->position = 0, номер строки в которой находится курсор равен колличеству строк в тексте.

### Тест suite4
- Цель: проверить корректность работы функции при перемещении курсора за пределы текста в отрицателном направлении позиции.
- Тип: негативный
- Входные данные: text txt, 2, -5
- Ожидаемый результат: txt->cursor->position = 0, номер строки в которой находится курсор равен 2

### Тест suite5
- Цель: проверить корректность работы функции при перемещении курсора за пределы текста в положительном направлении позиции.
- Тип: негативный
- Входные данные: text txt, 2, 30
- Ожидаемый результат: txt->cursor->position = 30, номер строки в которой находится курсор равен 2

### Тест suite6
- Цель: проверить корректность работы функции при отсутствии текста.
- Тип: негативный
- Входные данные: text txt, 2, 3
- Ожидаемый результат: Вывод "The file no_file.txt cannot be opened\n"

## Модуль showfirstwords
## Метод showfirstwords
### Тест suite1
- Цель: Проверить результат при отсутсвтие слов в тексте
- Тип: Негативный
- Входные данные: no_words.txt
- Ожидаемый результат: Вывод "No words\nNo words\n"

### Тест suite2
- Цель: Проверить результат при нормальных данных
- Тип: Позитивный
- Входные данные: input.txt
- Ожидаемый результат: Вывод "Hello\nSomething\nSo\nForth\nAnd\n"

### Тест suite3
- Цель: Проверить результат при отстутсвии текста в файле
- Тип: Негативный
- Входные данные: no_text.txt
- Ожидаемый результат: Вывод "There are already no any lines in the text!\n"

## Модуль mwef
## Метод mwef
### Тест suite1
- Цель: Проверить на ожидаемых данных перемещение курсора
- Тип: Позитивный
- Входные данные: input.txt; курсор на 2, 3 
- Ожидаемый результат: txt->cursor->position = 9, Номер строки курсора = 2


### Тест suite2
- Цель: Проверить при отстутсвии курсора и текста
- Тип: Негативный
- Входные данные: no_text.txt
- Ожидаемый результат: Вывод "There are already no any lines in the text!\n"

### Тест suite3
- Цель: Проверить положение курсора при загрузки без move_cursor
- Тип: Позитивный
- Входные данные: input.txt
- Ожидаемый результат: txt->cursor->position = 18, Номер строки курсора = 5

### Тест suite4
- Цель: Проверить положение курсора при отсутствии слов в тексте
- Тип: Негативный
- Входные данные: no_words.txt
- Ожидаемый результат: txt->cursor->position = 10, Номер строки курсора = 2

## Модуль rn
## Метод rn
### Тест suite1
- Цель: Проверить на нормальных давнных
- Тип: Позитивный
- Входные данные: input.txt; курсор на 3 строке, rn(3) 
- Ожидаемый результат: вывод show соответствует "Hello world!\nSomething interesting in this file\n|Forth string for some test\nAnd 5 to something\n", курсор на след. строке


### Тест suite2
- Цель: Проверить на удаление 1 строки
- Тип: Позитивный
- Входные данные: input.txt; курсор на 1 строке, rn(1) 
- Ожидаемый результат: вывод show соответствует "|Something interesting in this file\nSo, let's go\nForth string for some test\nAnd 5 to something\n", курсор на след. строке


### Тест suite3
- Цель: Проверить на удаление последней строки
- Тип: Позитивный
- Входные данные: input.txt; курсор на 5 строке, rn(5) 
- Ожидаемый результат: вывод show соответствует "Hello world!\nSomething interesting in this file\nSo, let's go\n|Forth string for some test\n", курсор на пред. строке


### Тест suite4
- Цель: Проверить на удаление единственной стркои файла
- Тип: Позитивный
- Входные данные: test.txt; курсор на 1 строке, rn(1) 
- Ожидаемый результат: вывод show соответствует "There are already no any lines in the text!\n", строка == NULL

### Тест suite5
- Цель: Проверить на при отрицательных данных и больше длины
- Тип: Негативный
- Входные данные: input.txt; rn(-1); rn(100)
- Ожидаемый результат: вывод show соответствует Вывод "Incorrect data!\n"
