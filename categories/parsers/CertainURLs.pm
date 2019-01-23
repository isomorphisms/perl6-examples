use v6;

=begin pod

==TITLE Certain URL's

==AUTHOR isomorphismes, @isomorphisms

URI schemes from https://www.iana.org/assignments/uri-schemes/uri-schemes.xhtml

This example was chosen for its brevity.

=end pod


grammar URI {
	token TOP { <protocol> '://' <subdomain> '.' <domain> '.' <tld> '/' <route> }
	token protocol { 'http|https|ftp|ws|wss|file|gopher|ham|imap|jabber|magnet|ms-excel|paparazzi|proxy|mumble|news|nntp|notes|onenote|rtmp|simpleledger|telnet|tv|udp|ssh|steam|soap.beep|things|xri|vnc|wyciwyg' }
	token subdomain { \w+ }
	token domain { \w+ }
	token common_tld { 'com|org|org.uk|edu|ac.uk|co.nz|tk|to|io|es|de|ly|us|mp' }
	token unfamiliar_tld { \w+ }
	}

my $u = URI.parse('http://www.mcgonagall-online.org.uk/gems/the-demon-drink')

say $u<tld>, $u<route>;
