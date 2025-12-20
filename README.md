## 2025-12-19
today we're doing something simple.
move object to collision. turn object into another.

UPDATE: yeah no. that's hard. it SHOULD be easy.
i want one object to have a variable, lets say.
another script can then READ that variable and so something with it.
however godot has very strange limitations that i didn't have to
think about when i was working in unity3D
... i'm telling you. the desire to make my own game engine is rising...
HOW HARD CAN IT EVEN BE. it's not like it's any harder than THIS...

OKAY: big concept. SCRAP EVERYTHING. WHAT IF - -
you were able to play this game... in a word document. HEAR ME OUT.
every input updates a json file. and we have ONE big script that scans
that json file AND THEN decides behaviors based off of what it sees.
that way you can also control everything in one big script and the hassle
of messing around with thousands of micro scripts is no longer an issue.
everything just PLUGS into the json file -
and everything just READS the json file.

UPDATE ARE YOU KIDDING ME? HOW DID I KNOCK THAT OUT IN 20 MINUTES!?
I SPENT LIKE 2 HOURS TRYING TO USE THE NODE AND "CALL" SYSTEM OR WHATEVER
yeah no we're parsing everything through json data. it's easier.
... okay update. turns out that godot doesn't have like an append function.
essentially: if you have a player data and item data they either have to be
seperate (which means juggling multiple files) or everything is in one huge file
(which means planning ahead). OR you can have like a "TMP" system where -
everything is stored in their own script, AND data just updates when its used.
so health isn't updated until you're hit, then it moves over into the json file
a script deals with the consequences, sends you back the data,
and then is fine erasing itself because it doesn't actually need to HOLD
onto anything. it just juggles the unecessary.


## 2025-12-18
well this is awkward. definitely skipped a few days. OKAY: what do we got?
we can spawn items, and they can overlap. so a big problem is now fixed.
as for the gameplay loop i think i want to lean into the curiosity element.
we're making: little inferno + papa's pizzaria + fantasy = interesting combo.

one big issue is code. apperantly you can only have 1 script per 1 object. wack.
solution i've heard? parent objects together. so you have small micro-scripts.
one object controls "grabbing" one controls "parameters" and so forth.
i think that's wack but it should help me "break up" the code into feasable chunks.

the last weirdest aspect to all this is the "preloading" aspect.
preloading makes you spawn items, levels, objects - anything.
but the method TO preload something is inherently... off...
i'm trying to figure a better method for preloading objects.

UPDATE: i figured out how to parent objects. HOPEFULLY that's all i gotta do.
next up i want to have a re-usable script with SLIGHTLY different parameters
that i can apply to every object.

i guess i'm overthinking things. i should really start simple and go from there.
i would like to make a cooking pot, take an object put it in that pot and transform it.
from there i can then GO BACK retrospectively and fix up the code
once i understand how it'd function.

TODO:
- figure out how to parent objects with code in tact.
- diversify code.
- figure out preloading


## 2025-12-09
every input method has its own pros and cons...
"touchscreenbutton" lacks the ability to detect overlayed objects instinctually.
"texturebutton" doesn't allow you to properly center an object to your liking.
code has to be activated from the game engine's UI, in the node section for some reason.
it just has a bunch of weird small quirks i don't like :(
... maybe i can build my OWN... game engine...

SOLUTION!? - i used "texturebutton" and made an offset to control where the center is.
you grab it in the center, and you can overlap objects and move them individually.
they tend to spawn in set heights, so you can't place the newest one on top.
i'm sure i can modify that in the code and make it so the latest one you grab ends up
being the first on top, every time. BUT... i don't want to do that. too much work.
the player will just deal with that quirk. WHICH ideally should just be a small issue anyways.

NOW we can start messing around with concepts. i don't just want you to grab a raw
ingridient and use that, you have to manipulate it somehow before putting into the sandwich...
MAYBE it should be like a stew instead? i need to make some concept art for the actual
game so i can visualize what it might look like. right now i'm basing it off of:
papa's something-rea games, and minecraft mods like pam's harvest and farmer's delight

HOWEVER comma, we are at the ideal period of time to pivot over into something like:
cooking mama or anything else of that nature. the options are just... SO varied right now.

TODO:
- figure out the core gameplay loop


## 2025-12-08
i have a big issue at the moment. i fundementally don't understand godot.
i have an idea of what systems i want to create and how i want them to perform.
PROBLEM: godot has a certain system that it wasn't you to abide by.

EXAMPLE: i want to use the touchscreen to grab an object, perchance.
THAT needs a specific function, which has specific rules that i'm not fully aware of.
whenever i try to utalize it, because i am unaware of the niche rules it operates by -
i end up with weird errors from usecases it wasn't predicting.

TODO:
- focus purely on understanding godot code...


## 2025-12-04
so we have a "central area" where we make the sandwich
that central area is a function which checks if any item is on the sandwich
afterwards it turns the corresponding value to true.

i'm having issues actually getting multiple instances to move independently
i'm going to try to get that working today.

TODO:
- move instances of an object individually
- keep track of recipe we're making
- compare to existing dataset of recipes


## 2025-12-03
learning godot. the main issue i'm struggling with at the moment is:
making new instances. when i make a new instance of an object -
the code is shared between them. so if you make two pieces of cheese
and you try to lift one up, because the code is shared it picks up two.
i UNDERSTAND how i'd fix this, but am struggling with implimentation.

for the dataset i want a json file with a bool for each item / item state.
then depending on the combination they'll resemble a real recipe.
if no recipe exists then output trash recipe?

example: cheese sandwich = bread + cheese + heat
and all we're checking is if those conditions have been met.
maybe if those conditons have been met then animation can trigger to change model?
if there's a trash recipe it stays the same, until it's "sold".
maybe a soft system where it doesn't give you more credit so you're
discensentivized to make that recipe because it doesn't earn as much?

while making the idea i actually liked the concept of a fantasy sandwich.
not sure if that'll be what the whole game ends up revolving around -
but in adventure time jake once made a sandwich that included (among other things)
sous-vide meat, a bird from a window, tears, and lobster soul.
i think a cooking game with similarly weird ingridients like that would be fun.

TODO:
- move instances of an object individually
- keep track of recipe we're making
- compare to existing dataset of recipes


## 2025-12-02
the idea is to make a fantasy cooking game. your goal is to make different recipes
with the newfound foods. we start off with the simple in universe version of eggs.

TODO:
- simple touch controls
- keep track of recipe we're making
- compare to existing dataset of recipes?
