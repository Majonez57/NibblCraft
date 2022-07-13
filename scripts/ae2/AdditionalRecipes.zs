
# Fluix Recipes

<recipetype:create:mixing>.addRecipe("fluix_dust_mixed", <constant:create:heat_condition:none>, [(<item:ae2:fluix_dust> * 2) % 50, (<item:ae2:fluix_dust> * 3) % 50], [<item:minecraft:redstone>, (<item:ae2:certus_quartz_dust> * 2), <item:ae2:charged_certus_quartz_crystal>],[<fluid:minecraft:water> * 250], 400);
<recipetype:create:mixing>.addRecipe("fluix_pearl_mixed", <constant:create:heat_condition:none>, [<item:ae2:fluix_pearl>], [<item:ae2:fluix_crystal> * 4, <item:minecraft:ender_pearl>]);

#Assembler Terminals


craftingTable.removeByName(["ae2:network/parts/terminals"]);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("me_terminal_seqn")
                                                      .transitionTo(<item:ae2:semi_dark_monitor>)
                                                      .require(<item:ae2:semi_dark_monitor>)
                                                      .loops(1)
                                                      .addOutput(<item:ae2:terminal>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:annihilation_core>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:logic_processor>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:formation_core>)));
