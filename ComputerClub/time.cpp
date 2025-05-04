#include "time.h"
#include <stdexcept>
#include <iomanip>
#include <sstream>

Time::Time() : hours(0), minutes(0) {}
Time::Time(int h, int m) : hours(h), minutes(m) {}

Time::Time(const std::string& str) {
    if (str.size() != 5 || str[2] != ':')
        throw std::invalid_argument("Invalid time format");
    hours = std::stoi(str.substr(0, 2));
    minutes = std::stoi(str.substr(3, 2));
    if (hours < 0 || hours > 23 || minutes < 0 || minutes > 59)
        throw std::invalid_argument("Invalid time value");
}

int Time::toMinutes() const {
    return hours * 60 + minutes;
}

Time Time::operator-(const Time& other) const {
    int diff = toMinutes() - other.toMinutes();
    return Time(diff / 60, diff % 60);
}

bool Time::operator<(const Time& t) const { 
    return toMinutes() < t.toMinutes(); 
    }
bool Time::operator>(const Time& t) const { 
    return toMinutes() > t.toMinutes(); 
    }
bool Time::operator==(const Time& t) const {
    return toMinutes() == t.toMinutes(); 
    }

std::string Time::toString() const {
    std::ostringstream oss;
    oss << std::setw(2) << std::setfill('0') << hours << ":"
        << std::setw(2) << std::setfill('0') << minutes;
    return oss.str();
}

int Time::RoundedHourDiff(const Time& from, const Time& to) {
    int diff = to.toMinutes() - from.toMinutes();
    return (diff + 59) / 60;
}
