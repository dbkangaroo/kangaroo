## sportsdb

- website: http://www.sportsdb.org/sd/samples
- source: https://docs.yugabyte.com/latest/sample-data/sportsdb/#about-the-sportsdb-sample-database

## Modifications made to source

- schema from postgres folder in same repo
- converted using http://www.sqlines.com/online

- remove extensions and settings
- remove word ONLY because not recognized by sql server
- remove statements creating binary trees with word USING because not recognized by sql server

- replace boolean with bit
- replace false with 0
- replace true with 1


