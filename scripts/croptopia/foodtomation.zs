
### ---- Toast Sammich
# Bread
craftingTable.removeByName("minecraft:bread");
craftingTable.addShapeless("dough_conversion1", <item:croptopia:dough>, [<item:create:dough>]);
craftingTable.addShapeless("dough_conversion2", <item:create:dough>, [<item:croptopia:dough>]);

# Remove "smelting" toast
furnace.removeByName("croptopia:toast_from_bread");

# Butter Creation
<recipetype:create:mixing>.addRecipe("butter_mixing",  <constant:create:heat_condition:none>, [<item:croptopia:butter> * 8], [<tag:items:forge:salts>], [<fluid:minecraft:milk> * 1000], 1600);
# Add butter deployment
craftingTable.removeByName("croptopia:butter");
<recipetype:create:deploying>.addRecipe("butter_deployment", <item:croptopia:toast>, <item:croptopia:butter>, [<item:croptopia:buttered_toast>, <item:croptopia:buttered_toast> % 30]);
# Sequence

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("toast_sammig_seqn")
                                                      .transitionTo(<item:croptopia:buttered_toast>)
                                                      .require(<item:minecraft:bread>)
                                                      .loops(1)
                                                      .addOutput((<item:croptopia:toast_sandwich> * 2), 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:croptopia:buttered_toast>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:bread>)));

### ---- 
# Cheese
craftingTable.removeByName("croptopia:cheese");
<recipetype:create:mixing>.addRecipe("cheese_mixing",  <constant:create:heat_condition:none>, [<item:croptopia:cheese> * 4], [<item:croptopia:lemon>], [<fluid:minecraft:milk> * 1000], 1600);

# Burger
craftingTable.removeByName("croptopia:cheeseburger");
craftingTable.removeByName("croptopia:hamburger");

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("burger_seqn")
                                                      .transitionTo(<item:croptopia:buttered_toast>)
                                                      .require(<item:minecraft:bread>)
                                                      .loops(1)
                                                      .addOutput(<item:croptopia:hamburger>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cooked_beef>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:croptopia:lettuce>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:bread>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("cheeseburger_seqn")
                                                      .transitionTo(<item:croptopia:buttered_toast>)
                                                      .require(<item:minecraft:bread>)
                                                      .loops(1)
                                                      .addOutput(<item:croptopia:cheeseburger>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cooked_beef>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:croptopia:cheese>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:croptopia:lettuce>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:bread>)));
