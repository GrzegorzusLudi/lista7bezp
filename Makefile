#!/bin/bash
g++ --std=c++11 -o bclient bclient.cpp -lgmpxx -lgmp
g++ --std=c++11 -o bserver bserver.cpp -lgmpxx -lgmp
g++ --std=c++11 -o bvrfy bvrfy.cpp -lgmpxx -lgmp
