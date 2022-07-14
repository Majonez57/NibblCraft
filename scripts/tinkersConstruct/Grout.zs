# Remove traditional grout recipe for mixed grout recipe

craftingTable.remove(<item:tconstruct:grout>);

<recipetype:create:mixing>.addRecipe("grout_mixed", <constant:create:heat_condition:none>, [(<item:tconstruct:grout> * 2), <item:tconstruct:grout> % 40, <item:tconstruct:grout> % 10], [<item:minecraft:clay_ball>, <item:minecraft:gravel>, <tag:items:minecraft:sand>], [], 200);