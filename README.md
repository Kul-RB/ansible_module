# Проект ansible_module 
Этот ansible playbook поддерживает следуещее:
 - Устанавливает Clickhouse и Vector
 - Поддерживает дистрибутив Linux (Ubuntu 20.04)
 - Устанавливает инструменты для работы Clickhouse (apt-transport-https, ca-certificates, dirmngr)
 - Развораивает базу данных Clickhouse
 - Устанавливает базовую конфигурацию Vector
 - Устанавливает Lighthouse
 - Настраивает NGINX для работы Lighthouse 
# Предварительное условие 
- **Ansible 2.13+**
- **Ubuntu 20.04**

# Настройка 
В файле `group_vars/clickhouse/vars.yml` вводятся переменные для конфигурации Vector и Lighthouse
```
type_vector_source: "stdin"
type_vector_sinks: "console"
codec: "text
lighthouse_path: /home/ubuntu/lighthouse/
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
Terraform создает виртуальные машины 
```
clickhouse   
lighthouse  
vector
```
на yandex-cloud и автоматически из шаблона `hosts.tftpl` создает `hosts.cfg` с группой `[nodes]` и запускает provisioner ansible