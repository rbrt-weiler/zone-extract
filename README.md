# zone-extract.pl

Extracts domains from `/etc/named.conf`.

## Description

zone-extract.pl scans the file `/etc/named.conf` for `zone` entries, which start a new domain definition. If domains are found, zone-extract.pl will print them to standard output. The return value of zone-extract.pl is the count of found zones.

## Requirements

zone-extract.pl requires a Perl interpreter.

## Synopsis

./zone-extract.pl

## License

zone-extract.pl is released under the [GNU General Public License](http://opensource.org/licenses/gpl-license.php).

## Copyright

zone-extract.pl is (c) 2003,2006 Robert Weiler.

