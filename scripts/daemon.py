import time
import os
import sys

while True:
    time_update:int = sys.argv[1:]

    os.system("~/cison/html/proj-br/scripts/worker_update.sh")
    time.sleep(time_update)

