# zone-extract.pl

Extracts domains from `/etc/named.conf`.

## Description

zone-extract.pl scans the file `/etc/named.conf` for `zone` entries, which start a new domain definition. If domains are found, zone-extract.pl will print them to standard output. The return value of zone-extract.pl is the count of found zones.

## Requirements

zone-extract.pl requires a Perl interpreter.

## Synopsis

./zone-extract.pl

## Source

The main repository for zone-extract.pl is located at GitLab: [https://gitlab.com/rbrt-weiler/zone-extract](https://gitlab.com/rbrt-weiler/zone-extract)

## License

zone-extract.pl is released under the [Zlib License](http://opensource.org/licenses/Zlib).

## Copyright

zone-extract.pl is (c) 2003,2006 Robert Weiler.

