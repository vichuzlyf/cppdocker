cmake_minimum_required(VERSION 3.15)
project(CppDocker)
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)
