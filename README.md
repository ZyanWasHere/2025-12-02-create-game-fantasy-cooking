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
