use strict;
use warnings;
use Test::More;
use Plack::Request;

plan tests => 1;

# boundary is missing
my $req = Plack::Request->new({CONTENT_TYPE => 'multipart/form-data'});
is_deeply $req->body_parameters, {};
