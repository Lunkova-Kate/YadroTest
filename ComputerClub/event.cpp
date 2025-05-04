#include "event.h"
#include <sstream>
#include <stdexcept>

// 09:00 1 client1

Event Event::parse(const std::string& line) {
    std::istringstream iss(line);
    std::string timeStr;
    Event e;
    e.originalLine = line;

    if (!(iss >> timeStr >> e.id))
        throw std::invalid_argument("Invalid event format");

    e.time = Time(timeStr);
    std::string arg;
    while (iss >> arg) e.args.push_back(arg);
    return e;
}


std::string Event::toString() const {
    std::ostringstream oss;
    oss << time.toString() << " " << id;
    for (const auto& a : args) oss << " " << a;
    return oss.str();
}
