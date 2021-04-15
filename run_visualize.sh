#!/bin/sh
hashtags="
    #코로나바이러스
    #コロナウイルス
    #冠状病毒
    #covid2019
    #covid-2019
    #covid19
    #covid-19
    #coronavirus
    #corona
    #virus
    #flu
    #sick
    #cough
    #sneeze
    #hospital
    #nurse
    #doctor
    _all 
    "
for group in lang country; do
    for hashtag in $hashtags; do
        ./src/visualize.py "--input_path=reduced.$group" --key=$hashtag | head > viz/$group/$hashtag
    done
done
