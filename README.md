# Проект ansible_module 
Этот ansible playbook поддерживает следуещее:
 - Устанавливает Clickhouse и Vector
 - Поддерживает дистрибутив Linux (Ubuntu 20.04)
 - Устанавливает инструменты для работы Clickhouse (apt-transport-https, ca-certificates, dirmngr)
 - Развораивает базу данных Clickhouse
 - Устанавливает базовую конфигурацию Vector
# Предварительное условие 
- **Ansible 2.13+**
- **Ubuntu 20.04**

# Настройка 
Обратитесь к файлу `inventory/prod.yml`, чтобы добавить хосты,
```
ansible_host: [IP_or_DNS]
```
В файле `group_vars/clickhouse/vars.yml` вводятся переменные для конфигурации Vector
```
type_vector_source: "stdin"
type_vector_sinks: "console"
codec: "text
```
Для измененеия версии Clickhouse:
```
clickhouse_version: "22.3.3.44"
```

Для изменения конфишурации Vector необходимо поменять шаблон в `template/vector.j2`
```
[sources.in]
type = {{ type_vector_source }}

[sinks.out]
inputs = ["in"]
type = {{ type_vector_sinks }}
encoding.codec = {{ codec }}
```

# Установка

Для устанвоки запустите команду с ключом -K
```
ansible-playbook -i inventory/prod.yml site.yml -K
```
