#!/bin/bash
g++ --std=c++11 -o bclient bclient.cpp -lgmpxx -lgmp
g++ --std=c++11 -o bserver bserver.cpp -lgmpxx -lgmp
g++ --std=c++11 -o bvrfy bvrfy.cpp -lgmpxx -lgmp

p2=i844f2wx
p4=lf8w5mj2
p8=bpks0bws
p16=lnhzt0tk

./bserver sign $p2 7777 &
./bclient 7777 e2 placki
./bvrfy e2 placki placki.podpis
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
./bserver sign $p4 7777 &
./bclient 7777 e4 placki
./bvrfy e4 placki placki.podpis
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
./bserver sign $p8 7777 &
./bclient 7777 e8 placki
./bvrfy e8 placki placki.podpis
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
./bserver sign $p16 7777 &
./bclient 7777 e16 placki
./bvrfy e16 placki placki.podpis
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"