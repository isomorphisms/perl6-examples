use v6;

=begin pod
==TITLE cite the Gospel or apocrypha
==AUTHOR isomorphismes, @isomorphisms
Gospel citations of formats like Matthew 3:24-25, 27

No error checking. (For example, Matthew 3 has only 17 verses.)

No abbreviations. (For example, Matthew might be abbreviated as "Matt" or "Matt." .)

No toleration for –, —, etc. (Hyphens     = ascii \x2d = \u0a2d    only.)

Doesn't handle commas. (Matthew 3:23,25,28 won't work.)

Order-free. (Matthew 3:47,1 is tolerated.)
=end pod

grammar Gospel {
	token TOP {^ <evangelist> <chapter> : <verses> $}
	token chapter { \d{1-2} }
	rule verses{ # needs to be repeated calls }
	token evangelist { "Matthew" | "Mark" | "Luke" | "John" | "Thomas" | "Barnabas" | "Mary" | "Judas" }
	}
