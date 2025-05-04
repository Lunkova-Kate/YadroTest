#include <iostream>
#include <fstream>
#include <sstream>
#include "computerClub.h"

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: ./task <input_file>\n";
        return 1;
    }

    std::ifstream file(argv[1]);
    if (!file) {
        std::cerr << "Cannot open file\n";
        return 1;
    }

    try {
        std::string line;
        std::getline(file, line);
        int numTables = std::stoi(line);

        std::getline(file, line);
        std::istringstream iss1(line);
        std::string openStr, closeStr;
        iss1 >> openStr >> closeStr;
        Time open(openStr), close(closeStr);

        std::getline(file, line);
        int price = std::stoi(line);

        ComputerClub club(numTables, open, close, price);
        while (std::getline(file, line)) {
            if (line.empty()) continue;
            Event e = Event::parse(line);
            club.processEvent(e);
        }

        club.closeClub();
        club.printOutput();
    } catch (std::exception& e) {
        std::cerr << e.what() << "\n";
        return 1;
    }

    return 0;
}
