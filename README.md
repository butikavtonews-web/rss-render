# RSS-Bridge Starter for Render (Free)

Два способа деплоя:
1) **Docker-образ** (простой и стабильный): использует публичный образ `rssbridge/rss-bridge` с Docker Hub.
2) **Native PHP** (через Dockerfile): установка зависимостей через `composer` и запуск Apache.

Официальные ресурсы:
- GitHub: https://github.com/RSS-Bridge/rss-bridge
- Docker Hub: https://hub.docker.com/r/rssbridge/rss-bridge
- Документация Blueprint (render.yaml): https://render.com/docs/blueprint-spec

## Быстрый старт (Docker)

1. Создайте новый репозиторий на GitHub и поместите в корень файл `render.yaml` (Docker-вариант).
2. Войдите на https://render.com → **New → Blueprint** → выберите репозиторий.
3. Примените Blueprint (Free‑план). Получите URL вида:
   `https://<your-service>.onrender.com`
4. Проверьте фид Telegram‑канала (пример для ГАИ Минск):
   ```
   https://<your-service>.onrender.com/?action=display&bridge=Telegram&channel=@gaiminsk&format=Atom
   ```

## Быстрый старт (Native PHP через Dockerfile)

1. В корень репозитория положите `render-php.yaml` и `Dockerfile` (из этого архива).
2. Render соберёт образ, установит зависимости, запустит Apache/PHP.
3. Проверка фида — аналогична Docker‑варианту.

## Каналы (пример)
- @gaiminsk — УГАИ Минск
- @customs_bel — ГТК РБ
- @pressmvd — МВД РБ

## Важно
- Работает только с **публичными** Telegram‑каналами.
- Для постоянной доступности на Free‑тарифе используйте мониторинг (UptimeRobot).
- При публичном доступе рекомендуется включить Basic Auth.

— Starter подготовлен 2025-10-29 для BUTIKAVTO.
