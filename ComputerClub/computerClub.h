#pragma once
#include <string>
#include <vector>
#include <map>
#include <queue>
#include "time.h"
#include "event.h"

class ComputerClub {
public:
    ComputerClub(int n, Time open, Time close, int price);
    void processEvent(const Event& e);
    void closeClub();
    void printOutput() const;

private:
    struct Table {
        bool occupied = false;
        std::string client = "";
        Time startTime;
        int revenue = 0;
        int occupiedMins = 0;
    };

    int numTables;
    Time openTime, closeTime;
    int pricePerHour;

    std::map<std::string, bool> inClub;
    std::map<std::string, int> clientTable;
    std::queue<std::string> waiting;
    std::vector<Table> tables;
    std::vector<std::string> output;

    bool isClientInClub(const std::string& name) const;
    void addEvent(const std::string& line);
    void addError(const Time& t, const std::string& err);
    void sitClient(const Time& t, const std::string& name, int tableIdx);
};
