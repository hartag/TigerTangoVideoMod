@echo off
rem Convert the SongCounter documentation in markdown into html.
pandoc -f markdown-smart -t html -o SongCounter.html SongCounter.md
                                                                                                                         