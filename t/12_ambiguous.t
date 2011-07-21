use strict;
use warnings;
use Router::Simple;
use Test::More;

my $r = Router::Simple->new();
$r->connect('/', {}, {method => 'GET', host => 'localhost'});

isnt($r->match( +{ HTTP_HOST => 'localhost', REQUEST_METHOD => '', PATH_INFO => '' } ), undef);

done_testing;
