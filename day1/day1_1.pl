#!/usr/bin/perl

my $sum = 0;

while (<>) {
    my $first;
    my $last;
    if (/^[^\d]*(\d).*(\d)[^\d]*$/) {
        $first = $1;
        $last = $2;
    } elsif (/^[^\d]*(\d)/) {
        $first = $1;
        $last = $1;
    }
    print "$first $last\n";
    $sum += int("$first$last");
}

print "$sum\n";

# Minimal solution
#my $sum = 0;
#while (<>) {
#    if (/^[^\d]*(\d).*(\d)[^\d]*$/) {
#        $sum += int("$1$2");
#    } elsif (/^[^\d]*(\d)/) {
#        $sum += int("$1$1");
#    }
#}
#print "$sum\n";
