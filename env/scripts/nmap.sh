#!/usr/bin/env bash


main()
{
        clear && figlet "nmap" && sleep 1
        sudo nmap -T4 -sn 192.168.0/24
}


main
