#!/bin/bash

set -e

# Task 0 : Hello World
run_task0() {
  cd task0
  docker build -t softy-pinko:task0 .
  docker run -it --rm --name softy-pinko-task0 softy-pinko:task0
  cd ..
}

# Task 1 : Back-end Flask
run_task1() {
  cd task1
  docker build -t softy-pinko:task1 .
  docker run -p 5252:5252 -it --rm --name softy-pinko-task1 softy-pinko:task1
  cd ..
}

# Task 2 : Front + Back séparés
run_task2() {
  cd task2/back-end
  docker build -t softy-pinko-back-end:task2 .
  docker run -p 5252:5252 -d --name softy-pinko-back-end-task2 softy-pinko-back-end:task2
  cd ../front-end
  docker build -t softy-pinko-front-end:task2 .
  docker run -p 9000:9000 -d --name softy-pinko-front-end-task2 softy-pinko-front-end:task2
  cd ../..
}

# Task 3 : Connexion Front ↔ Back
run_task3() {
  cd task3/back-end
  docker build -t softy-pinko-back-end:task3 .
  docker run -p 5252:5252 -d --name softy-pinko-back-end-task3 softy-pinko-back-end:task3
  cd ../front-end
  docker build -t softy-pinko-front-end:task3 .
  docker run -p 9000:9000 -d --name softy-pinko-front-end-task3 softy-pinko-front-end:task3
  cd ../..
}

# Task 4 : Docker Compose
run_task4() {
  cd task4
  docker-compose build
  docker-compose up
  cd ..
}

# Task 5 : Proxy
run_task5() {
  cd task5
  docker-compose build
  docker-compose up
  cd ..
}

# Task 6 : Scale horizontally
run_task6() {
  cd task6
  docker-compose build
  docker-compose up --scale back-end=2
  cd ..
}

# Menu principal
case "$1" in
  task0) run_task0 ;;
  task1) run_task1 ;;
  task2) run_task2 ;;
  task3) run_task3 ;;
  task4) run_task4 ;;
  task5) run_task5 ;;
  task6) run_task6 ;;
  *) echo "Usage: $0 {task0|task1|task2|task3|task4|task5|task6}" ;;
esac
