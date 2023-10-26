# Задание 1
Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.
# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/6afb3790-9627-4e04-bc91-120be8955e10)

# Задание 2
Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/a2d9108b-aa9a-46ad-951e-fa06fadd486f)

# Задание 3
Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/76c52658-dccc-430c-bc85-1a12175b0428)

# Задание 4
Проведите запуск playbook на окружении из prod.yml. Зафиксируйте полученные значения some_fact для каждого из managed host.

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/5f931444-f43d-493b-9c78-3029c3b90664)

# Задание 5
Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact
Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/b7a93027-0234-4f69-9fdf-cc611413c659)

# Задание 6
При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/460d6fd1-46c0-4344-80b8-76f4f76b4da6)
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/2f78d0a7-470f-4b0a-9495-5fecc221a96d)

# Задание 7
Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/6ef53c20-542c-4677-a7fd-36ed2ba72a30)

# Задание 8
Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node
В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения
Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь, что факты some_fact для каждого из хостов определены из верных group_vars.
# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/a260d9aa-9bc6-40ee-87aa-a76e258d98f0)

# Задание 9
При помощи ansible-vault расшифруйте все зашифрованные файлы с переменными

# Решение
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/4de4bfaf-3ba2-44dd-8533-183a2c15cc37)

# Задание 10
Зашифруйте отдельное значение PaSSw0rd для переменной some_fact паролем netology. Добавьте полученное значение в group_vars/all/exmp.yml

# Решение 
![image](https://github.com/Kul-RB/ansible_module/assets/53901269/67657aa2-ad4b-4228-b8d7-d659c4d426a2)


