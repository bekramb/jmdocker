# jmdocker

Докер образ для запуска jmeter

## Создание образа

Построить обзраз можно при помощи  скрипта `build.sh` из  `Dockerfile`

## Запуск

Запустить тесты, расположенные в папке tests можно скриптом `run.sh`


1. Клонируем из репозитория и переходим в директорию:

   ```
   git clone https://github.com/bekrramb/jmdocker.git
   cd jmdocker
   ```

2. Запускае билд скрипт:

   ```
   ./build.sh
   ```

   Должен собраться докер образ, о чем видетельствует строка
   
   <tt>Successfully tagged jmdocker/jmeter:5.1.1</tt>

3. Запуск тестового скрипта:

   ```
   ./run.sh
   ```

  Сценарий для скрипта подгружается из директории tests. Имя сценария test-plan.jmx.
  Тестируется api по url: http://api.bitcoincharts.com/v1/markets.json
  По результатам формируются файлы с логами в директории tests

