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
the idea is to make a fantasy cooking game. your goal is to make different recipes with the newfound foods.
we start off with the simple in universe version of eggs.

TODO:
- simple touch controls
- keep track of recipe we're making
- compare to existing dataset of recipes?
