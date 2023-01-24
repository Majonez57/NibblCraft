import mods.create.MixingManager;
import mods.create.CrushingManager;
import mods.jei.JEI;

# Remove the Inscriber

<recipetype:ae2:inscriber>.removeAll();
craftingTable.remove(<item:ae2:inscriber>);
JEI.hideIngredient(<item:ae2:inscriber>);

# Circuit deployment
<recipetype:create:deploying>.addRecipe("engineering_circuit_deployed", <item:minecraft:diamond>, <item:ae2:engineering_processor_press>, [<item:ae2:printed_engineering_processor>], true);
<recipetype:create:deploying>.addRecipe("printed_silicon_deployed", <item:ae2:silicon>, <item:ae2:silicon_press>, [<item:ae2:printed_silicon>], true);
<recipetype:create:deploying>.addRecipe("printed_calculation_deployed", <tag:items:ae2:all_certus_quartz>,<item:ae2:calculation_processor_press>, [<item:ae2:printed_calculation_processor>], true);
<recipetype:create:deploying>.addRecipe("printed_logic_deployed", <item:minecraft:gold_ingot>, <item:ae2:logic_processor_press>, [<item:ae2:printed_logic_processor>], true);

# Press Duplication
<recipetype:create:deploying>.addRecipe("engineering_processor_press_dupe", <item:minecraft:iron_block>, <item:ae2:engineering_processor_press>, [<item:ae2:engineering_processor_press>], true);
<recipetype:create:deploying>.addRecipe("silicon_press_dupe", <item:minecraft:iron_block>, <item:ae2:silicon_press>, [<item:ae2:silicon_press>], true);
<recipetype:create:deploying>.addRecipe("calculation_processor_press_dupe", <item:minecraft:iron_block>,<item:ae2:calculation_processor_press>, [<item:ae2:calculation_processor_press>], true);
<recipetype:create:deploying>.addRecipe("logic_processor_press", <item:minecraft:iron_block>, <item:ae2:logic_processor_press>, [<item:ae2:logic_processor_press>], true);

# Dust Crushing Recipes 

<recipetype:create:crushing>.addRecipe("quartz_dust_crush", [<item:ae2:certus_quartz_dust>, <item:ae2:certus_quartz_dust> % 75], <tag:items:ae2:all_certus_quartz>);
<recipetype:create:crushing>.addRecipe("fluix_dust_crush", [<item:ae2:fluix_dust>],<item:ae2:fluix_crystal>);
<recipetype:create:crushing>.addRecipe("skystone_dust_crush", [<item:ae2:sky_dust>], <item:ae2:sky_stone_block>, 200);

<recipetype:create:milling>.addRecipe("fluix_dust_mill", [<item:ae2:fluix_dust>],<item:ae2:fluix_crystal>);

# Sequenced Assembly circuits

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("engineering_processor_seqn")
                                                      .transitionTo(<item:ae2:printed_silicon>)
                                                      .require(<item:ae2:printed_silicon>)
                                                      .loops(1)
                                                      .addOutput(<item:ae2:engineering_processor>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:redstone>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:printed_engineering_processor>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("calculation_processor_seqn")
                                                      .transitionTo(<item:ae2:printed_silicon>)
                                                      .require(<item:ae2:printed_silicon>)
                                                      .loops(1)
                                                      .addOutput(<item:ae2:calculation_processor>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:redstone>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:printed_calculation_processor>)));
                                                    
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("logic_processor_seqn")
                                                      .transitionTo(<item:ae2:printed_silicon>)
                                                      .require(<item:ae2:printed_silicon>)
                                                      .loops(1)
                                                      .addOutput(<item:ae2:logic_processor>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:redstone>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:printed_logic_processor>)));
