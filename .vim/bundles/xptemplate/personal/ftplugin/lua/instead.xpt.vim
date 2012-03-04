XPTemplate priority=personal

let s:f = g:XPTfuncs()

" vim:tw=78:ts=4:sw=4:sts=4:noet:norl:
" use snippet 'varConst' to generate contant variables
" use snippet 'varFormat' to generate formatting variables
" use snippet 'varSpaces' to generate spacing variables

XPTvar $TRUE          True
XPTvar $FALSE         False
XPTvar $NULL          NULL
XPTvar $UNDEFINED     NULL

" if () ** {
" else ** {
XPTvar $BRif     ' '

" } ** else {
XPTvar $BRel     \n

" for () ** {
" while () ** {
" do ** {
XPTvar $BRloop   ' '

" struct name ** {
XPTvar $BRstc    ' '

" int fun() ** {
" class name ** {
XPTvar $BRfun    ' '

" int fun ** (
" class name ** (
XPTvar $SPfun      ''

" int fun( ** arg ** )
" if ( ** condition ** )
" for ( ** statement ** )
" [ ** a, b ** ]
" { ** 'k' : 'v' ** }
XPTvar $SParg      ' '

" if ** (
" while ** (
" for ** (
XPTvar $SPcmd      ' '

" a ** = ** a ** + ** 1
" (a, ** b, ** )
XPTvar $SPop       ' '

XPTinclude
    \ _common/common
    \ lua/lua

" rooms, objects, dialogs

XPT r " room {}
= room {
    `property^`...^,
    `property^`...^
}

XPT o " obj {}
= obj {
    `property^`...^,
    `property^`...^
}

XPT d " dlg {}
= dlg {
    `property^`...^,
    `property^`...^
}

XPT xr " xroom {}
= xroom {
    `property^`...^,
    `property^`...^
}

XPT plr " player {}
= player {
    `property^`...^,
    `property^`...^
}

XPT menu " menu {}
= menu {
    `property^`...^,
    `property^`...^
}

XPT stat " stat {}
= stat {
    `property^`...^,
    `property^`...^
}

XPT game " game {}
= game {
    `property^`...^,
    `property^`...^
}

" nam, dsc, pic, act, etc.

XPT nam " nam
nam = `"Name"{{^"`Name^"`}}^

XPT dsc " description
dsc = `[[Description]]{{^[[`Description^]]`}}^

XPT act " act
act = `"Action"{{^"`Action^"`}}^

XPT tak " tak
tak = `"Take"{{^"`Take^"`}}^

XPT use " use
use = `"Use"{{^"`Use^"`}}^

XPT used " used
used = `"Used"{{^"`Used^"`}}^

XPT inv " inventory 
inv = `"Use on itself"{{^"`Use on itself^"`}}^

XPT enter " enter 
enter = `"Enter"{{^"`Enter^"`}}^

XPT entered " entered 
entered = `"Entered"{{^"`Entered^"`}}^

XPT exit " exit 
exit = `"Exit"{{^"`Exit^"`}}^

XPT left " left 
left = `"Left"{{^"`Left^"`}}^

XPT life " left 
life = `"life"{{^"`Life^"`}}^

XPT where " where 
where = `"Where"{{^"`Where^"`}}^

XPT pic " left 
pic = `"picture.jpg"{{^"`picture.jpg^"`}}^

XPT disp " disp 
disp = `"display name"{{^"`display name^"`}}^

" obj {}, way {}, var {}, etc.

XPT obj " obj{} 
obj = { 
    `"object"{{^"`object^"`}}^`...^,
    `"object"{{^"`object^"`}}^`...^
}

XPT way " way{} 
way = { 
    `"room"{{^"`room^"`}}^`...^,
    `"room"{{^"`room^"`}}^`...^
}

XPT var " var{} 
var { 
    `variable^ = `value^``...^,
    `variable^ = `value^``...^
}

XPT global " global{} 
global { 
    `variable^ = `value^``...^,
    `variable^ = `value^``...^
}

" objs, inv
XPT objs " objs \()
objs()`:^

XPT invs " inv \()
inv()`:^

XPT me " me \()
me()`:^

XPT ways " ways \()
ways()`:^

XPT here " here \()
here()`:^

XPT from " from \()
from()`:^

" ref/deref/nameof

XPT ref " ref \()
ref("`obj^")`:^

XPT deref " deref \()
deref(`obj^)`:^

XPT nameof " nameof \()
nameof(`obj^);

" have, live, seen, exist, etc.

XPT have " have ()
have("`obj^"`, "scene"{{^, "`scene^"`}}^)

XPT live " live \()
live("`obj^")

XPT taken " taken \()
taken("`obj^")

XPT seen " seen \(obj, where)
seen("`obj^", "`scene^")

XPT exist " exist \()
exist("`obj^"`, "scene"{{^, "`scene^"`}}^)

XPT path " path \()
path("`obj^"`, "scene"{{^, "`scene^"`}}^)

XPT visited " visited \()
visited(`"room"{{^"`room^"`}}^)

XPT disabled " disabled \(obj)
disabled("`obj^")

" add, del, srch, purge, replace...

XPT add " add \()
add("`obj^");

XPT del " del \()
del("`obj^");

XPT zap " zap \() 
zap();

XPT cat " cat \()
cat("`obj^"`, 1{{^, `1^`}}^);

XPT purge " purge \()
purge("`obj^"`, "from"{{^, "`from^"`}}^);

XPT replace " replace \()
replace("`obj^", "`withobj^"`, "where"{{^, "`where^"`}}^);

XPT enable " enable \()
enable(`"obj"{{^"`obj^"`}}^);

XPT disable " disable \()
disable(`"obj"{{^"`obj^"`}}^);

XPT enable_all " enable_all \()
enable_all(`"obj"{{^"`obj^"`}}^);

XPT disable_all " disable_all \()
disable_all(`"obj"{{^"`obj^"`}}^);

XPT move " move \(obj, where)
move("`obj^", "`scene^"`, "from"{{^, "`from^"`}}^);

XPT movef " movef \(obj, where)
movef("`obj^", "`scene^"`, "from"{{^, "`from^"`}}^);

XPT take " take \(obj, [where])
take("`obj^"`, "from"{{^, "`from^"`}}^);

XPT rnd " rnd \(4)
rnd(`2^);

XPT walk " walk \()
walk("`room^");

XPT walkin " walkin \()
walkin("`room^");

XPT walkout " walkout \()
walkout();

XPT walkback " walkback \()
walkback();

XPT back " back \()
back();

XPT par " par \()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
par("`separator^", `arg*^);

XPT lifeoff " lifeoff \()
lifeoff("`obj^");

" phrases

XPT phr " phr \(in, out, code)
[`1^] = phr(
    `[[Question.]]{{^[[`Question.^]]`}}^, 
    `[[-- Answer.]]{{^[[-- `Answer.^]]`}}^`...{{^,
    `[[-- Code]]{{^[[`-- Code^]]`}}^`}}^
)

XPT hphr " _phr \(in, out, code)
[`1^] = _phr(
    `[[Question.]]{{^[[`Question.^]]`}}^, 
    `[[-- Answer.]]{{^[[-- `Answer.^]]`}}^`...{{^,
    `[[-- Code]]{{^[[`-- Code^]]`}}^`}}^
)

" dialog functions

XPT pon " pon \()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
pon(`1^, `arg*^);

XPT poff " poff \()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
poff(`1^, `arg*^);

XPT prem " prem \()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
prem(`1^, `arg*^);

XPT pseen " pseen \()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
pseen(`1^, `arg*^);

XPT punseen " punseen \()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
punseen(`1^, `arg*^);

" virtual objects, ways, rooms

XPT vobj " vobj \()
vobj("`virtualobj^", "`decription^");

XPT vway " vway \()
vway("`virtualway^", "`decription^", "`destination^");

XPT vroom " vroom \()
vroom("`decription^", "`destination^");

" p's

XPT p " p [[]]
p [[`Text^]];

XPT pn " pn [[]]
pn [[`Text^]];

XPT pf " p ()
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
p ([[`Text^]], `arg*^);

XPT pd " p ()
XSET arg*|post=ExpandIfNotEmpty('..', 'arg*')
p ([[`Text^]]..`arg*^);

" return

XPT ret " return true
return `True^;

" require & dofile's

XPT req " require "module"
require "`module^";

XPT dofile " dofile \()
dofile("`pathtofile.lua^");

XPT doencfile " doencfile \()
doencfile("`pathtofile.lua^");

XPT gamefile " gamefile \()
gamefile("`pathtofile.lua^");

" media functions

XPT img " img\()
img("`picture.jpg^")

XPT set_music " set_music\()
set_music("`ambience.ogg^"`, 1{{^, `1^`}}^);

XPT get_music " get_music\()
get_music()

XPT get_music_loop " get_music_loop\()
get_music_loop()

XPT is_music " is_music\()
is_music()

XPT stop_music " stop_music\()
stop_music()
