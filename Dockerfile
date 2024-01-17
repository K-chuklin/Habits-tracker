# Указываем версию Python для контейнера
FROM python:3
# Устанавливаем рабочую дирректорию
WORKDIR /app
# Устанавливаем & обновляем пакетный менеджер pip
RUN pip install --upgrade pip
# Копируем зависисмости
COPY requirements.txt .
# Устанавливаем зависимости
RUN pip install -r requirements.txt
# Копируем код в контейнер
COPY . .

# Команда для запуска приложения при старте контейнера
CMD ["python", "manage.py", "runserver"]