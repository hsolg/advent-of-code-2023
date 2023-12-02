#!/usr/bin/perl

use strict;

my $sum = 0;

sub todigit($)
{
    my $str = shift;

    $str =~ s/one/1/;
    $str =~ s/two/2/;
    $str =~ s/three/3/;
    $str =~ s/four/4/;
    $str =~ s/five/5/;
    $str =~ s/six/6/;
    $str =~ s/seven/7/;
    $str =~ s/eight/8/;
    $str =~ s/nine/9/;
    
    return $str;
}

while (<>) {
    chomp;
    my $str = $_;

    my $first;
    my $last;
    
    if ($str =~ /^.*?(one|two|three|four|five|six|seven|eight|nine|1|2|3|4|5|6|7|8|9)/) {
        $first = $1;
    }

    $str = reverse($str);
    if ($str =~ /^.*?(eno|owt|eerht|ruof|evif|xis|neves|thgie|enin|1|2|3|4|5|6|7|8|9)/) {
        $last = reverse($1);
    }

    $first = todigit($first);
    $last = todigit($last);
    
    $sum += int("$first$last");
}

print "$sum\n";
