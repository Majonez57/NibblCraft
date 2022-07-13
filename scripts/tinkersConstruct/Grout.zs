

craftingTable.removeByName(["tconstruct:smeltery/seared/grout_multiple"]);

<recipetype:create:mixing>.addRecipe("grout_mixed", <constant:create:heat_condition:none>, [(<item:tconstruct:grout> * 2) % 50, (<item:tconstruct:grout> * 3) % 40, (<item:tconstruct:grout> * 4) % 10], [<item:minecraft:clay_ball>, <item:minecraft:gravel>, <tag:items:minecraft:sand>], [], 200);