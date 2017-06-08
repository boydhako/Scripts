#!/bin/bash
rsync -vrpzh --exclude="*.DS_Store" --log-file=/Users/Binary/music_sync-Music-Archive.log /Volumes/The\ Glove/Audio/ /Volumes/MUSIC\ ARCHI/Music/
rsync -vrpzh --exclude="*.DS_Store" --log-file=/Users/Binary/music_sync-Music-Archive.log /Volumes/The\ Glove/_Serato_/ /Volumes/MUSIC\ ARCHI/_Serato_/
rsync -vrpzh --exclude="*.DS_Store" --log-file=/Users/Binary/music_sync-Music-Archive.log /Volumes/The\ Glove/iTunes-The_Glove/ /Volumes/MUSIC\ ARCHI/iTunes-The_Glove/
