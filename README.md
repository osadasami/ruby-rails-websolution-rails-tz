Задание: спроектировать таблицы для муз проекта (артист-песни-скачивания) под следующие запросы:
  - вывод треков исполнителя, отсортированных по названию трека / вызовом метода объекта @artist.songs
  - вывод треков исполнителя, отсортированных по популярности (скачиваниям) / вызовом метода объекта @artist.songs_top
  - популярные треки (по скачиваниям) за день/нед/месяц / метод Song.top(days, count)
  - популярные артисты на букву (напр "A") / метод Artist.top(letter, count)

Комментарии:
  * один артист имеет множество треков; трек принадлежит только одному артисту; трек можно скачать множество раз
  * надо создать миграции (с необходимыми индексами), модели со взаимосвязями и методами для получения описанной выборки данных
  * порядок объемов данных и нагрузки: 100тыс артистов, 1млн треков, 500тыс скачиваний в день
  * отрисовывать выводимые данные не нужно

Модели/таблицы:
  * Artist
    - name
  * Song
    - title
    - length
    - filesize
  * Download
    - необходимые поля определить самостоятельно исходя из задачи

В качестве решения задачи необходимо выслать файл schema.rb и файлы созданных моделей.