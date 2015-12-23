use strict;
use warnings;
use utf8;

use Test::More tests => 2;

use Geo::SypexGeo;

my $geo = Geo::SypexGeo->new('data/SxGeoCity.dat');

my $city = $geo->get_city('87.250.250.203');
is( $city, 'Москва', 'City founded ok' );

my $country = $geo->get_country('87.250.250.203');
is( $country, 'ru', 'Country founded ok' );

