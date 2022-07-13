

# Remove Unecessary parts
var i = 1;
while i < 257 {
    craftingTable.removeByName(["ae2:network/cells/item_storage_cell_"+ i+ "k", "ae2:network/cells/item_storage_cell_"+ i+ "k_storage", "ae2:network/cells/fluid_storage_cell_"+i+"k", "ae2:network/cells/fluid_storage_cell_"+i+"k_storage"]);
    i = i * 4;
}

# Deployment Recipes

<recipetype:create:deploying>.addRecipe("1k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_1k>, [<item:ae2:item_storage_cell_1k>]);
<recipetype:create:deploying>.addRecipe("4k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_4k>, [<item:ae2:item_storage_cell_4k>]);
<recipetype:create:deploying>.addRecipe("16k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_16k>, [<item:ae2:item_storage_cell_16k>]);
<recipetype:create:deploying>.addRecipe("64k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_64k>, [<item:ae2:item_storage_cell_64k>]);
<recipetype:create:deploying>.addRecipe("256k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_256k>, [<item:ae2:item_storage_cell_256k>]);


<recipetype:create:deploying>.addRecipe("1k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_1k>, [<item:ae2:fluid_storage_cell_1k>]);
<recipetype:create:deploying>.addRecipe("4k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_4k>, [<item:ae2:fluid_storage_cell_4k>]);
<recipetype:create:deploying>.addRecipe("16k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_16k>, [<item:ae2:fluid_storage_cell_16k>]);
<recipetype:create:deploying>.addRecipe("64k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_64k>, [<item:ae2:fluid_storage_cell_64k>]);
<recipetype:create:deploying>.addRecipe("256k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_256k>, [<item:ae2:fluid_storage_cell_256k>]);