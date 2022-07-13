import mods.create.MixingManager;
import mods.create.CrushingManager;
import mods.jei.JEI;

# Remove the Inscriber

<recipetype:ae2:inscriber>.removeAll();
craftingTable.removeByName(["ae2:network/blocks/inscribers"]);
JEI.hideIngredient(<item:ae2:inscriber>);


# Circuit deployment
<recipetype:create:deploying>.addRecipe("engineering_circuit_deployed", <item:minecraft:diamond>, <item:ae2:engineering_processor_press>, [<item:ae2:printed_engineering_processor>, <item:ae2:engineering_processor_press>]);
<recipetype:create:deploying>.addRecipe("printed_silicon_deployed", <item:ae2:silicon>, <item:ae2:silicon_press>, [<item:ae2:printed_silicon>, <item:ae2:silicon_press>]);
<recipetype:create:deploying>.addRecipe("printed_calculation_deployed", <item:ae2:certus_quartz_crystal>,<item:ae2:calculation_processor_press>, [<item:ae2:printed_calculation_processor>, <item:ae2:calculation_processor_press>]);
<recipetype:create:deploying>.addRecipe("printed_logic_deployed", <item:minecraft:gold_ingot>, <item:ae2:logic_processor_press>, [<item:ae2:printed_logic_processor>, <item:ae2:logic_processor_press>]);

# Press Duplication
<recipetype:create:deploying>.addRecipe("engineering_processor_press_dupe", <item:minecraft:iron_block>, <item:ae2:engineering_processor_press>, [<item:ae2:engineering_processor_press> * 2]);
<recipetype:create:deploying>.addRecipe("silicon_press_dupe", <item:minecraft:iron_block>, <item:ae2:silicon_press>, [<item:ae2:silicon_press> * 2]);
<recipetype:create:deploying>.addRecipe("calculation_processor_press_dupe", <item:minecraft:iron_block>,<item:ae2:calculation_processor_press>, [<item:ae2:calculation_processor_press> * 2]);
<recipetype:create:deploying>.addRecipe("logic_processor_press", <item:minecraft:iron_block>, <item:ae2:logic_processor_press>, [<item:ae2:logic_processor_press> * 2]);

# Dust Crusing Recipes 

<recipetype:create:crushing>.addRecipe("quartz_dush_crush", [(<item:ae2:certus_quartz_dust> * 2 ) % 75, <item:ae2:certus_quartz_dust> % 25], <tag:items:ae2:all_certus_quartz>);
<recipetype:create:crushing>.addRecipe("fluix_dush_crush", [(<item:ae2:fluix_dust> * 2) % 75, <item:ae2:fluix_dust> % 25],<item:ae2:fluix_crystal>);
<recipetype:create:crushing>.addRecipe("skystone_dush_crush", [<item:ae2:sky_dust>], <item:ae2:sky_stone_block>, 200);

<recipetype:create:milling>.addRecipe("quartz_dush_mill", [<item:ae2:certus_quartz_dust>],<tag:items:ae2:all_certus_quartz>);
<recipetype:create:milling>.addRecipe("fluix_dush_mill", [<item:ae2:fluix_dust>],<item:ae2:fluix_crystal>);


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
