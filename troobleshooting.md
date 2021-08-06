1. db.currentOp({"secs_running":{$gte:180}}); db.killOp()
2. 