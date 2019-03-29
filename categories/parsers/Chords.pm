use v6;

=begin pod
==TITLE Guitar chords (tablature)
==AUTHOR isomorphismes, @isomorphisms

Chord recognition for use in parsing UltimateGuitar, Songsterr, etc.

Doesn't know about sus.

Doesn't know about I - IV - V.

Not actually tablature.

=end pod


grammar Chord {
	token TOP { <note> [<sharp>|<flat>] [<major> | <minor> | <diminished>]? <seventh>? <add>? }
	token note { ['A'-'G'] }
	token sharp { '#' | '♯' }
	token flat { 'b' | '♭' }
	token minor { 'm' }
	token major {}
	#empty
	token seventh {7}
	token add { "add" [2|4|6] }
	}




#data

my $croce = <<TABLATURE
"Tomorrow's Gonna Be A Brighter Day" - Written by
Jim Croce INTRO: e|
-----------------------------------------------| B|
-----------------------------------------5~~~--| G|
-------------------------------------4h6-------| D|
------------------------------2--4/6-----------| A|
----------2-4-----------2-4--------------------| E|
--0--0--4-------2--2--4------------------------| |
-----------------------------------------------| |
-----------------------------------------5~~~--| |
-------------------------------------4h6-------| |
------------------------------2--4/6-----------| |
----------2-4-----------2-4--------------------| |
--0--0--4-------2--2--4------------------------|
VERSE:
Well, I'm ^E7sorry for the things ^Athat I told you
But ^E7words only go so f^Aar And ^Eif I had my way
I would ^F#m7reach into heaven And I'd ^C#mpull you
^Ddown a s^Atar for a present And I'd ^E7make you a
chain out of ^Adiamonds And ^F#m7pearls from a s^
Dummer s^Aea But ^Eall I can give you is a^A kiss in
the morning And a ^C#msweet ^Dapolog^Ay
REFRAIN: E A E7 A VERSE:
Well, I^E7 know that it hasn't been^A easy And I ^
E7haven't always been a^Around To say ^Ethe right
words or to ^F#m7hold you in the mornin' Or to ^C#
mhelp you ^Dwhen you're^A down I know ^E7I never
showed you muc^Ah of a good time But ^F#m7baby
things are g^Donna chan^Age I'm gon^Ena make up for
all of the ^Ahurt I brought I'm gonna ^C#mlove away
a^Dll your p^Aain
CHORUS:
And t^Eomorrow's gonna ^C#mbe a brighter^F#m7 day
There's gonna ^B7be some changes Tom^Eorrow's gonna^
C#m be a brighter^F#m7 day This t^B7ime you can
believe me N^Eo more cryin' in your ^Alonely room
And^F#m7 no more em^Dpty night^As 'Cause ^Etomorrow
morn^F#m7in' everythin^B7g will t^Eurn out ^Aright
REFRAIN: E A VERSE:
Well, there's ^Esomething that I've got to tel^Al
you Yes I've ^Egot something on my ^Amind But wo^
Erds come hard when you^F#m7r lying in my arms And
when I'm looking ^C#mdeep int^Do your e^Ayes But
there's^E truth and consol^Aation And ^F#m7what I'm
tr^Dying to s^Aay Is that ^Enobody ever had a r^
Aainbow baby Un^C#mtil he ha^Dd the ra^Ain
CHORUS:
I would ^F#m7reach into heaven And I'd ^C#mpull you
^Ddown a s^Atar for a present And I'd ^E7make you a
chain out of ^Adiamonds And ^F#m7pearls from a s^
Dummer s^Aea But ^Eall I can give you is a^A kiss in
the morning And a ^C#msweet ^Dapolog^Ay
REFRAIN: E A E7 A VERSE:
Well, I^E7 know that it hasn't been^A easy And I ^
E7haven't always been a^Around To say ^Ethe right
words or to ^F#m7hold you in the mornin' Or to ^C#
mhelp you ^Dwhen you're^A down I know ^E7I never
showed you muc^Ah of a good time But ^F#m7baby
things are g^Donna chan^Age I'm gon^Ena make up for
all of the ^Ahurt I brought I'm gonna ^C#mlove away
a^Dll your p^Aain
CHORUS:
And t^Eomorrow's gonna ^C#mbe a brighter^F#m7 day
There's gonna ^B7be some changes Tom^Eorrow's gonna^
C#m be a brighter^F#m7 day This t^B7ime you can
believe me N^Eo more cryin' in your ^Alonely room
And^F#m7 no more em^Dpty night^As 'Cause ^Etomorrow
morn^F#m7in' everythin^B7g will t^Eurn out ^Aright
REFRAIN: E A VERSE:
Well, there's ^Esomething that I've got to tel^Al
you Yes I've ^Egot something on my ^Amind But wo^
Erds come hard when you^F#m7r lying in my arms And
when I'm looking ^C#mdeep int^Do your e^Ayes But
there's^E truth and consol^Aation And ^F#m7what I'm
tr^Dying to s^Aay Is that ^Enobody ever had a r^
Aainbow baby Un^C#mtil he ha^Dd the ra^Ain
CHORUS:
And t^Eomorrow's gonna ^C#mbe a brighter^F#m7 day
There's gonna ^B7be some changes Tom^Eorrow's gonna^
C#m be a brighter^F#m7 day This t^B7ime you can
believe me N^Eo more cryin' in your ^Alonely room
And^F#m7 no more em^Dpty night^As 'Cause ^Etomorrow
morn^F#m7in' everythin^B7g will t^Eurn out ^Aright
OUTRO: It's gonna, it's gonna, it's gonna be a
brighter day It's gonna, it's gonna, it's gonna be a
brighter day It's gonna, it's gonna, it's gonna be a
brighter day It's gonna be, it's gonna be, it's
gonna be a brighter day It's gonna be, it's gonna
be, it's gonna be a brighter day Come on tomorrow
Come on tomorrow It's gonna be a brighter day
TABLATURE
