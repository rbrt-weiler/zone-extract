#!/usr/bin/perl -w

# Quick hack um aus der /etc/named.conf die eingetragenen Domains zu
# extrahieren.

# (c) 2003,2006 Robert Weiler <http://www.robwei.de/>
# GPL'ed <http://www.gnu.org/licenses/gpl.html>
# Dieses Skript kommt OHNE JEGLICHE GEWÄHRLEISTUNG.



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
    print "Bekannte Domains auf dem Server:\n";
    foreach (sort(@z)) {
        print "    -> $_\n";
    }
}
else {
    print "Auf dem Server sind keine Domains bekannt.\n";
}



exit(scalar(@z));

