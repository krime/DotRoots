#!/usr/bin/env perl
#
################################################################################
# Copyright (C) 1999-2013, SYSU Supercomputing Keylab, all rights reserved
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
################################################################################
# @file           getsetfields.pl
# @brief          Mutator & Accessor of Fields
# @author         Krime Lam<krimelam@gmail.com>
# @version        v1.0.0.150710
# @date           Fri 10 Jul 2015 12:46:42 PM HKT
# @copyright      Copyright (C) 1999-2013, SYSU Supercomputing Keylab, all rights reserved
################################################################################

use strict;
use warnings;

#open(TG) or die "couldn't open stdin, $!";

my @lines = <>;

foreach my $line (@lines) {
  my @fields = split('\t', $line);
  my $tag = $fields[0];
  my $arg = $fields[2];
  $arg =~ s/^\s+//;
  $arg =~ s/\s+$//;
  # omit the preceding `/^' and the tailing `$/'
  $arg = substr($arg, 2, -2);
  # omit the `protected' and the `private'
  $arg =~ s/\b(private|protected)\b//;
  $arg =~ s/;//;
  $arg =~ s/=.*//;
  $arg =~ s/^\s+//;
  $arg =~ s/\s+$//;
  my $type = $arg;
  my $find = "$tag";
  my $repl = "";
  $type =~ s/$find/$repl/e;
  $type =~ s/^\s+//;
  $type =~ s/\s+$//;
  my $tagGetter = $tag;
  my $tagSetter = $tag;
  $tagGetter =~ s/\b(.)/get\u$1/;
  $tagSetter =~ s/\b(.)/set\u$1/;
  #print "/**\n";
  #print " * \@brief getter of field $tag\n";
  #print " */\n";
  print "public ".$type." ".$tagGetter."() { return this.".$tag."; }\n";
  #print "/**\n";
  #print " * \@brief setter of field $tag\n";
  #print " */\n";
  print "public void ".$tagSetter."(".$arg.") { this.".$tag." = ".$tag."; }\n\n";
}

#close(TG);

