# Fluix Recipes

<recipetype:create:mixing>.addRecipe("fluix_dust_mixed", <constant:create:heat_condition:none>, [<item:ae2:fluix_dust> * 2, <item:ae2:fluix_dust> % 50], [<item:minecraft:redstone>, <tag:items:ae2:all_nether_quartz>, <item:ae2:charged_certus_quartz_crystal>],[<fluid:minecraft:water> * 250], 400);
<recipetype:create:mixing>.addRecipe("fluix_pearl_mixed", <constant:create:heat_condition:none>, [<item:ae2:fluix_pearl>], [<item:ae2:fluix_crystal> * 4, <item:minecraft:ender_pearl>]);

# Formation Core Recipe replacement
craftingTable.remove(<item:ae2:formation_core>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("formation_core_seqn")
                                                      .transitionTo(<item:ae2:logic_processor>)
                                                      .require(<item:ae2:logic_processor>)
                                                      .loops(1)
                                                      .addOutput(<item:ae2:formation_core> * 2, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:dusts/fluix>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:ae2:all_certus_quartz>)));

# Annihilation Core Recipe
craftingTable.remove(<item:ae2:annihilation_core>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("annihilation_core_seqn")
                                                      .transitionTo(<item:ae2:logic_processor>)
                                                      .require(<item:ae2:logic_processor>)
                                                      .loops(1)
                                                      .addOutput(<item:ae2:annihilation_core> * 2, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:dusts/fluix>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:ae2:all_nether_quartz>)));
