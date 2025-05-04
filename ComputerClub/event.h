#pragma once
#include <string>
#include <vector>
#include "time.h"

struct Event {
    Time time;
    int id;
    std::vector<std::string> args;
    std::string originalLine;

    static Event parse(const std::string& line);
    std::string toString() const;
};
