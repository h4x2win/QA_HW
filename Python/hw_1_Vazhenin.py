# 1) Создать переменную типа String
s = 'Aleksandr'
# 2) Создать переменную типа Integer
i = 27
# 3) Создать переменную типа Float
fl = 22.2
# 4) Создать переменную типа Bytes
byt = bytes('Hello world!', 'UTF-8')
# 5) Создать переменную типа List
ls = ['My', 'first', 'list']
# 6) Создать переменную типа Tuple
t = tuple('Hello, world')
# 7) Создать переменную типа Set
st = set('Hello, world')
# 8. Создать переменную типа Frozen set
frst = frozenset('Hello, world!')
# 9) Создать переменную типа Dict
d = {1: 'Hello', 2: 'World!'}
# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print("String =", s, (type(s)))
print("Integer =", i, (type(i)))
print("Float =", fl, (type(fl)))
print("Bytes =", byt, (type(byt)))
print("List =", ls, (type(ls)))
print("Tuple =", t, (type(t)))
print("Set =", st, (type(st)))
print("Frozenset", frst, (type(frst)))
print("Dict =", d, (type(d)))
# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
first_name = 'Aleksandr'
last_name = 'Vazhenin'
full_name = first_name + " " + last_name
print(full_name)
# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
first_nm = 'Aleksandr'
age = 27
print("My name is", first_nm + ".", "I am", age, "years old.")
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
first_nm = 'Aleksandr'
age = 27
print("My name is " + first_nm + ". " + "I am " + format(age) + " years old.")