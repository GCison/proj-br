from os import truncate
import subprocess
import time
import os


while True:
    os.system("~/cison/html/proj-br/scripts/worker_update.sh")
    time.sleep(10)

