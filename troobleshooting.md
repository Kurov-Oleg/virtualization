1. db.currentOp({"secs_running":{$gte:180}}); db.killOp()
    Чтобы уменьшить время обработки запросов можно выполнять их параллельно
2. Проблема может заключаться в том, что масштабировании произошло увеличение данных, необходимых для записи. И тк redis недоступен во время записи на диск, резко увеличилось количество значений, и возникла блокировка.
3. Это происходит когда большое количество строк возвращается как часть одного запроса. Необходимо увеличить параметр net_read_timeout 
4. Ошибка возникает из-за того что закончилось свободное место. Необходимо изменить настройки памяти.
