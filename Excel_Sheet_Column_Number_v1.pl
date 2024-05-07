#!/bin/perl -w

use strict;
use feature 'say';

sub Excel_Sheet_Column_Number{
	my @title = split('', "@_");
	my $c = 1;
	my %nums = map {$_ => $c++} ('A' .. 'Z');
	my $result;
	
	foreach (0 .. $#title){
		$result += $nums{$title[$_]} * (26 ** ($#title-$_))
	}

	return $result;
}

say(Excel_Sheet_Column_Number('A')); # 1
say(Excel_Sheet_Column_Number('AB')); # 28
say(Excel_Sheet_Column_Number('ZY')); # 701

