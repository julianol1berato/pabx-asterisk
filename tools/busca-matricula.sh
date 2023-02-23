#!/bin/bash 
grep $1 /var/log/asterisk/full | grep 'User entered' | sed -nE 's/User entered/Matricula:/p' | sed -nE 's/(VERBOSE\[.*\[)//p' | cut -d' ' -f 1-4,6,7 | sed -nE 's/\]/ -/p'
