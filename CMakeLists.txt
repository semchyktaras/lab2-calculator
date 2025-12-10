cmake_minimum_required(VERSION 3.10)
project(lab2_calculator)

include_directories(include)

# Створюємо статичну бібліотеку
add_library(calc STATIC src/add.cpp src/sub.cpp)

# Створюємо виконуваний файл
add_executable(app src/main.cpp)

target_link_libraries(app calc)
