#!/bin/bash -xv
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type l -exec rm -vf {} \;
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*ignore" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.nfo" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.png" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.txt" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.url" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.exe" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.plist" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.wflow" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.workflow" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*._Contents" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.sfv" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.srr" -delete
#find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "*.docx" -delete

for END in *.ignore *.nfo *.png *.txt *.exe *.plist *.wflow *.workflow *._Contents *.sfv *.srr *.docx *.xlsx *.nzb *.idx *.pdf *.html *.website ; do
	find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type f -iname "$END" -delete
done

find /mnt/MAIN/Media/COMPLETED_DOWNLOADS/ -type d -empty -delete
