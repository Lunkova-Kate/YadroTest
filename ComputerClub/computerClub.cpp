#include "computerClub.h"
#include <sstream>
#include <iomanip>
#include <iostream>
#include <algorithm>

ComputerClub::ComputerClub(int n, Time open, Time close, int price)
    : numTables(n), openTime(open), closeTime(close), pricePerHour(price) {
    tables.resize(n);
}

bool ComputerClub::isClientInClub(const std::string& name) const {
    return inClub.count(name) && inClub.at(name);
}

void ComputerClub::addEvent(const std::string& line) {
    output.push_back(line);
}

void ComputerClub::addError(const Time& t, const std::string& err) {
    std::ostringstream oss;
    oss << t.toString() << " 13 " << err;
    output.push_back(oss.str());
}

void ComputerClub::sitClient(const Time& t, const std::string& name, int tableIdx) {
    Table& table = tables[tableIdx - 1];
    table.occupied = true;
    table.client = name;
    table.startTime = t;
    clientTable[name] = tableIdx;

    std::ostringstream oss;
    oss << t.toString() << " 12 " << name << " " << tableIdx;
    output.push_back(oss.str());
}

void ComputerClub::processEvent(const Event& e) {
    addEvent(e.originalLine);

    switch (e.id) {
        case 1: {
            std::string name = e.args[0];
            if (isClientInClub(name)) addError(e.time, "YouShallNotPass");
            else if (e.time < openTime) addError(e.time, "NotOpenYet");
            else inClub[name] = true;
            break;
        }
        case 2: {
            std::string name = e.args[0];
            int tableNum = std::stoi(e.args[1]);
            if (!isClientInClub(name)) {
                addError(e.time, "ClientUnknown");
                break;
            }
            if (tables[tableNum - 1].occupied &&
                tables[tableNum - 1].client != name) {
                addError(e.time, "PlaceIsBusy");
                break;
            }

            if (clientTable.count(name)) {
                int oldTable = clientTable[name];
                Table& t = tables[oldTable - 1];
                int mins = e.time.toMinutes() - t.startTime.toMinutes();
                t.occupiedMins += mins;
                t.revenue += Time::RoundedHourDiff(t.startTime, e.time) * pricePerHour;
                t.occupied = false;
                t.client = "";
            }

            sitClient(e.time, name, tableNum);
            break;
        }
        case 3: {
            std::string name = e.args[0];
            bool freeExists = std::any_of(tables.begin(), tables.end(), [](const Table& t) {
                return !t.occupied;
            });

            if (freeExists) addError(e.time, "ICanWaitNoLonger!");
            else if ((int)waiting.size() >= numTables) {
                inClub[name] = false;
                std::ostringstream oss;
                oss << e.time.toString() << " 11 " << name;
                output.push_back(oss.str());
            } else {
                waiting.push(name);
            }
            break;
        }
        case 4: {
            std::string name = e.args[0];
            if (!isClientInClub(name)) {
                addError(e.time, "ClientUnknown");
                break;
            }
            if (clientTable.count(name)) {
                int tIdx = clientTable[name];
                Table& t = tables[tIdx - 1];
                int mins = e.time.toMinutes() - t.startTime.toMinutes();
                t.occupiedMins += mins;
                t.revenue += Time::RoundedHourDiff(t.startTime, e.time) * pricePerHour;
                t.occupied = false;
                t.client = "";
                clientTable.erase(name);

                if (!waiting.empty()) {
                    std::string next = waiting.front(); waiting.pop();
                    sitClient(e.time, next, tIdx);
                }
            }
            inClub[name] = false;
            break;
        }
    }
}

void ComputerClub::closeClub() {
    for (auto& [name, present] : inClub) {
        if (present) {
            std::ostringstream oss;
            oss << closeTime.toString() << " 11 " << name;
            output.push_back(oss.str());
        }
    }

    output.push_back(closeTime.toString());

    for (int i = 0; i < numTables; ++i) {
        std::ostringstream oss;
        oss << i + 1 << " " << tables[i].revenue << " "
            << std::setw(2) << std::setfill('0') << tables[i].occupiedMins / 60 << ":"
            << std::setw(2) << std::setfill('0') << tables[i].occupiedMins % 60;
        output.push_back(oss.str());
    }
}

void ComputerClub::printOutput() const {
    std::cout << openTime.toString() << "\n";
    for (const auto& line : output) std::cout << line << "\n";
}
