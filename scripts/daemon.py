from os import truncate
import subprocess
import time


while True:
    subprocess.run(['bash', "~/cison/html/proj-br/scripts/worker_update.sh"], timeout=10)
    time.sleep(10)

