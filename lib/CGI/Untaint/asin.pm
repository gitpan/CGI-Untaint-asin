package CGI::Untaint::asin;

$VERSION = '0.01';

use strict;
use base 'CGI::Untaint::object';

sub _untaint_re { 
  qr/^([\d\w]\d{4}[\d\w]{5})$/i;
}

=head1 NAME

CGI::Untaint::asin - validate an Amazon ID

=head1 SYNOPSIS

  use CGI::Untaint;
  my $handler = CGI::Untaint->new($q->Vars);

  my $url = $handler->extract( -as_asin => 'id' );

=head1 DESCRIPTION

This CGI::Untaint input handler verifies that it is dealing with a
plausible Amazon ID (asin). It does not (yet?) check that this is a *real*
asin, just that it looks like one.

=head1 SEE ALSO

L<CGI::Untaint>

=head1 AUTHOR

Tony Bowden, E<lt>kasei@tmtm.comE<gt>. 

=head1 COPYRIGHT

Copyright (C) 2004 Tony Bowden. All rights reserved.

This module is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
