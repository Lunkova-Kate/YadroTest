#pragma once
#include <string>

struct Time {
    int hours, minutes;

    Time();
    Time(int h, int m);
    explicit Time(const std::string& str);

    int toMinutes() const;
    Time operator-(const Time& other) const;
    bool operator<(const Time& t) const;
    bool operator>(const Time& t) const;
    bool operator==(const Time& t) const;

    std::string toString() const;

    static int RoundedHourDiff(const Time& from, const Time& to);
};