#!/usr/bin/perl -w

# Reads domains from /etc/named.conf.

# (c) 2003,2006 Robert Weiler
# Released und the GPL <http://www.gnu.org/licenses/gpl.html>

use strict;

my @z;

open(FILE, '/etc/named.conf') or die "$!\n";
while (<FILE>) {
    if ($_ =~ m/^zone\s+"([a-z0-9\-\.]+(\.[a-z]+)?)"/i) {
        push(@z, $1);
    }
}
close(FILE) or warn "$!\n";

if (scalar(@z) > 0) {
    print "Known domains:\n";
    foreach (sort(@z)) {
        print "    -> $_\n";
    }
}
else {
    print "No domains found.\n";
}

exit(scalar(@z));

