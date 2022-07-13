
### ---- Toast Sammich

# Remove "smelting" toast
furnace.removeByName("croptopia:toast_from_bread");
# Add butter deployment
<recipetype:create:deploying>.addRecipe("butter_deployment", <item:croptopia:toast>, <item:croptopia:butter>, [(<item:croptopia:buttered_toast> * 3) % 30, <item:croptopia:buttered_toast> % 70]);
# Sequence

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("toast_sammig_seqn")
                                                      .transitionTo(<item:croptopia:buttered_toast>)
                                                      .require(<item:minecraft:bread>)
                                                      .loops(1)
                                                      .addOutput((<item:croptopia:toast_sandwich> * 2), 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:croptopia:buttered_toast>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:bread>)));

### ---- 
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
