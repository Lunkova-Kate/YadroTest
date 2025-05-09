# Computer Club Simulator

Симулятор компьютерного клуба, который обрабатывает события клиентов и ведёт учёт использования столов и выручки.

---

## Задачи

Программа моделирует работу компьютерного клуба с фиксированным количеством столов. 

Клиенты приходят, занимают столы, иногда ожидают в очереди, а затем покидают клуб. Программа должна корректно обрабатывать все возможные события, включая ошибки (например, попытки занять уже занятый стол, покинуть клуб без регистрации и т.д.).

---

## Требования к программе
1. Программа должна компилироваться компилятором gcc или clang в Linux, mingw/cygwin в Windows. 
2. Рекомендуется использование стандартной библиотеки (STL). Использование любых сторонних библиотек, кроме STL, запрещено. 
3. В решении, кроме файлов с исходным кодом, требуется предоставить инструкции по компиляции программы для проверки. Можно, но необязательно, использовать следующие системы автоматизации сборки: make, automake, cmake, gradle; проприетарные средства сборки не допускаются: например, файлы проектов MS Visual Studio не подойдут.

4. Можно (но необязательно) написать проверочные юнит-тесты с использованием доступной библиотеки (Google Test, CppUTest, и т.п.).



## Алгоритм работы

1. **Инициализация клуба:**
   - Количество столов.
   - Часы работы (время открытия и закрытия).
   - Стоимость одного часа.

2. **Обработка событий:**
   - `1 name` — клиент пришёл:
     - Если уже в клубе — ошибка.
     - Если клуб закрыт — ошибка.
     - Иначе добавляется в список клиентов.

   - `2 name table_number` — клиент садится за стол:
     - Если клиента нет — ошибка.
     - Если стол занят — ошибка.
     - Если уже сидит за другим столом — ошибка.
     - Иначе клиент занимает стол, фиксируется время начала.

   - `3 name` — клиент ждёт:
     - Если клиента нет — ошибка.
     - Добавляется в очередь ожидания.

   - `4 name` — клиент уходит:
     - Если сидит за столом — освобождает его, рассчитывается стоимость.
     - Если в очереди — удаляется.
     - Если просто в зале — удаляется.
     - Иначе — ошибка.

3. **Закрытие клуба:**
   - Всех оставшихся клиентов выгоняют (фиксируется уход, расчёт оплаты, если был стол).
   - Очередь очищается.
   - Формируется итог по каждому столу:
     - Общая выручка.
     - Время использования в формате `HH:MM`.

---

## Формат входных данных

```text
N              // Количество столов
HH:MM HH:MM    // Время открытия и закрытия компьютерного клуба
P              // Стоимость часа
HH:MM event    // События (одно на строку)
````

### Примеры событий:

* `09:01 1 client1` — клиент1 пришёл.
* `09:02 2 client1 1` — клиент1 сел за стол 1.
* `11:00 4 client1` — клиент1 уходит.

---

##  Формат выходных данных

```text
09:00                // Время открытия
<все события>        // Каждое событие или ошибка
19:00                // Время закрытия
<результаты по столам>
```

### Формат итогов:

```text
<table_number> <выручка> <время использования>
```

---

## Пример

### Вход (`input.txt`):

```
2
09:00 19:00
100
09:01 1 client1
09:02 2 client1 1
10:00 1 client2
10:01 2 client2 2
11:00 4 client1
11:30 4 client2
```

### Выход (`output.txt`):

```
09:00
09:01 1 client1
09:02 2 client1 1
10:00 1 client2
10:01 2 client2 2
11:00 4 client1
11:00 11 client1
11:30 4 client2
11:30 11 client2
19:00
1 200 02:00
2 100 01:30
```

---

## Инстуркция по сборке

```bash
mkdir build
cd build
cmake ..
make
```

Запуск:

```bash
./computer_club ../input.txt
```

