#!/usr/bin/perl -w

use strict;

use Test::More tests => 3;
use Test::CGI::Untaint;

is_extractable("6302508754", "6302508754", "asin");
is_extractable("078322608X", "078322608X", "asin");
unextractable("0B8322608X", "asin");
