# LFA BootScripts

Загрузочные скрипты системы инициализации BusyBox для системы LFA.

## Состав

- `/etc/rc.d/shutdown` — скрипт для отключения системы;
- `/etc/rc.d/startup` — скрипт для включения системы;
- `/etc/rc.d/init.d/functions` — содержит основные функции для вывода сообщений;
- `/etc/rc.d/scripts/*` — загрузочные скрипты сторонних сервисов;

## Установка

```bash
make DESTDIR=$LFA_SYS
```
