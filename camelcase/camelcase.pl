#!/usr/local/bin/perl
use strict;
use warnings;

$_ = ($ENV{'POPCLIP_TEXT'} =~ s/([a-z])([A-Z])/$1 $2/gr);  # Split already_camel_cased_words
print (lc($_) =~ s/([a-z])[\-_ ]+([a-z])/$1\U$2/gr);       # Join words, and upperCase the rightmost character
