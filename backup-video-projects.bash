#!/bin/bash
rsync -vrpzh --exclude="*.DS_Store" --log-file=/Users/Binary/Video_Projects-backup.log ~/Video\ Projects/ /Volumes/Video\ Masters/
