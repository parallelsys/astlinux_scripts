#!/bin/bash
wget -q -O - ${1} | sox -t mp3 - -t ul -r 8000 -c 1 -
