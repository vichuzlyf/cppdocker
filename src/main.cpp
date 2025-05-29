#include <iostream>
#include <thread>
#include <chrono>

int main(int argc, char** argv)
{
    while (true) {
        std::cout << "Hello from the inside of the container" << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
}