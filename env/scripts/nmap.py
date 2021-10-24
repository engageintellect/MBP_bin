#!/usr/bin/env python3
import os
import subprocess


def display():
    os.system('clear')
    os.system('figlet "nmap"')
    print('\n')


def nmap():
    result = subprocess.getoutput('sudo nmap -T4 -sn 192.168.0/24')
    print(result)


if __name__ == "__main__":
    display()
    nmap()








